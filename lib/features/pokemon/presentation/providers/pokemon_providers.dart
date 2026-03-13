import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pokedex_app/core/providers/locale_provider.dart';

import 'package:pokedex_app/core/constants/constants.dart';
import 'package:pokedex_app/core/errors/failures.dart';
import 'package:pokedex_app/core/network/network_info.dart';
import 'package:pokedex_app/core/providers/storage_providers.dart';
import 'package:pokedex_app/features/pokemon/data/data_sources/local/pokemon_local_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/data_sources/remote/pokemon_remote_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/repository/pokemon_repository_impl.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_list.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/manage_favorites.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_list_item.dart';

import 'package:pokedex_app/core/network/dio_provider.dart';
import 'pokemon_filter_provider.dart';

part 'pokemon_providers.g.dart';
part 'pokemon_providers.freezed.dart';

// ---------------------------------------------------------------------------
// Infrastructure providers
// ---------------------------------------------------------------------------

@riverpod
PokemonRemoteDataSource pokemonRemoteDataSource(Ref ref) =>
    PokemonRemoteDataSource(ref.watch(dioProvider));

@riverpod
PokemonLocalDataSource pokemonLocalDataSource(Ref ref) =>
    PokemonLocalDataSourceImpl(ref.watch(databaseProvider));

@riverpod
PokemonRepository pokemonRepository(Ref ref) => PokemonRepositoryImpl(
      ref.watch(pokemonRemoteDataSourceProvider),
      ref.watch(pokemonLocalDataSourceProvider),
    );

// ---------------------------------------------------------------------------
// Use case providers
// ---------------------------------------------------------------------------

@riverpod
GetPokemonList getPokemonList(Ref ref) =>
    GetPokemonList(ref.watch(pokemonRepositoryProvider));

@riverpod
GetPokemonDetail getPokemonDetail(Ref ref) =>
    GetPokemonDetail(ref.watch(pokemonRepositoryProvider));

@riverpod
ToggleFavorite toggleFavorite(Ref ref) =>
    ToggleFavorite(ref.watch(pokemonRepositoryProvider));

@riverpod
IsFavorite isFavorite(Ref ref) =>
    IsFavorite(ref.watch(pokemonRepositoryProvider));

@riverpod
GetFavorites getFavorites(Ref ref) =>
    GetFavorites(ref.watch(pokemonRepositoryProvider));

// ---------------------------------------------------------------------------
// Favorite State Notifier
// ---------------------------------------------------------------------------

@Riverpod(keepAlive: true)
class Favorites extends _$Favorites {
  @override
  FutureOr<List<PokemonListItemState>> build() async {
    final favorites = await ref.watch(getFavoritesProvider).call();
    
    return favorites
        .map((p) => PokemonListItemState(
              id: p.id,
              name: p.name,
              imageUrl: p.imageUrl,
              types: p.types,
            ))
        .toList();
  }

  Future<void> toggle(PokemonListItemState item) async {
    final domainItem = PokemonListItem(
      id: item.id,
      name: item.name,
      imageUrl: item.imageUrl,
      types: item.types,
    );

    // Optimistic update: remove/add from local state immediately
    final currentState = state.asData?.value;
    if (currentState != null) {
      final exists = currentState.any((PokemonListItemState p) => p.id == item.id);
      if (exists) {
        state = AsyncData(
          currentState.where((PokemonListItemState p) => p.id != item.id).toList(),
        );
      } else {
        state = AsyncData([...currentState, item]);
      }
    }

    try {
      await ref.read(toggleFavoriteProvider).call(domainItem);
      // Invalidate isPokemonFavoriteProvider to keep detail pages in sync
      ref.invalidate(isPokemonFavoriteProvider(item.id));
    } catch (e) {
      // Revert on error
      ref.invalidateSelf();
    }
  }
}

@riverpod
bool isPokemonFavorite(Ref ref, int id) {
  final favorites = ref.watch(favoritesProvider).asData?.value ?? [];
  return favorites.any((PokemonListItemState p) => p.id == id);
}

// ---------------------------------------------------------------------------
// Data providers
// ---------------------------------------------------------------------------

/// Provides detail for a single Pokemon.
@riverpod
Future<PokemonDetailState> pokemonDetail(
  Ref ref, {
  required int id,
}) async {
  final useCase = ref.watch(getPokemonDetailProvider);
  final language = ref.watch(localeStateProvider).languageCode;
  final pokemon = await useCase(GetPokemonDetailParams(id: id, language: language));
  return PokemonDetailState(
    id: pokemon.id,
    name: pokemon.name,
    imageUrl: pokemon.imageUrl,
    types: pokemon.types,
    height: pokemon.height,
    weight: pokemon.weight,
    stats: pokemon.stats
        .map((s) => StatState(name: s.name, baseStat: s.baseStat))
        .toList(),
    abilities: pokemon.abilities,
    flavorText: pokemon.flavorText,
    category: pokemon.category,
    genderRate: pokemon.genderRate,
  );
}

/// A notifier that manages the paginated Pokemon list.
@Riverpod(keepAlive: true)
class PokemonListNotifier extends _$PokemonListNotifier {
  @override
  FutureOr<PokemonListPageState> build() async {
    final connectivityState = ref.watch(connectivityProvider);
    final isHardwareOffline = connectivityState.maybeWhen(
      data: (results) => results.contains(ConnectivityResult.none),
      orElse: () => false,
    );

    if (isHardwareOffline) {
      throw const Failure.network(message: kNoInternetSimpleError);
    }

    final hasInternet = await ref.read(networkInfoProvider).isConnected;
    if (!ref.mounted) return const PokemonListPageState(items: [], offset: 0, isLoadingMore: false);
    
    if (!hasInternet) {
      throw const Failure.network(
        message: kNoInternetAccessError,
      );
    }

    final items = await _fetchPage(0);
    return PokemonListPageState(items: items, offset: 0, isLoadingMore: false);
  }

  Future<void> fetchNextPage() async {
    final currentState = state.value;
    if (currentState == null || currentState.isLoadingMore) return;

    state = AsyncData(currentState.copyWith(isLoadingMore: true));

    try {
      final nextOffset = currentState.offset + 20;
      final newItems = await _fetchPage(nextOffset);
      if (!ref.mounted) return;

      final currentIds = currentState.items.map((e) => e.id).toSet();
      final filteredNewItems =
          newItems.where((e) => !currentIds.contains(e.id)).toList();

      state = AsyncData(
        currentState.copyWith(
          items: [...currentState.items, ...filteredNewItems],
          offset: nextOffset,
          isLoadingMore: false,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<List<PokemonListItemState>> _fetchPage(int offset) async {
    if (!ref.mounted) return [];
    final useCase = ref.read(getPokemonListProvider);
    final language = ref.read(localeStateProvider).languageCode;
    final items = await useCase(
      GetPokemonListParams(limit: 20, offset: offset, language: language),
    );
    return items
        .map(
          (e) => PokemonListItemState(
            id: e.id,
            name: e.name,
            imageUrl: e.imageUrl,
            types: e.types,
          ),
        )
        .toList();
  }
}

@riverpod
AsyncValue<List<PokemonListItemState>> filteredPokemonList(Ref ref) {
  final listState = ref.watch(pokemonListProvider);
  final filter = ref.watch(pokemonFilterProvider);

  return listState.whenData((state) {
    return state.items.where((pokemon) {
      final matchesSearch =
          pokemon.name.toLowerCase().contains(filter.searchQuery.toLowerCase());
      final matchesType = filter.selectedTypes.isEmpty ||
          pokemon.types.any(
              (type) => filter.selectedTypes.contains(type.toLowerCase()));
      return matchesSearch && matchesType;
    }).toList();
  });
}

@freezed
abstract class PokemonListPageState with _$PokemonListPageState {
  const factory PokemonListPageState({
    required List<PokemonListItemState> items,
    required int offset,
    required bool isLoadingMore,
  }) = _PokemonListPageState;
}

// ---------------------------------------------------------------------------
// View-model state classes
// ---------------------------------------------------------------------------

@freezed
abstract class PokemonListItemState with _$PokemonListItemState {
  const factory PokemonListItemState({
    required int id,
    required String name,
    required String imageUrl,
    required List<String> types,
  }) = _PokemonListItemState;
}

@freezed
abstract class PokemonDetailState with _$PokemonDetailState {
  const factory PokemonDetailState({
    required int id,
    required String name,
    required String imageUrl,
    required List<String> types,
    required int height,
    required int weight,
    required List<StatState> stats,
    required List<String> abilities,
    required String flavorText,
    required String category,
    required int genderRate,
  }) = _PokemonDetailState;
}

@freezed
abstract class StatState with _$StatState {
  const factory StatState({
    required String name,
    required int baseStat,
  }) = _StatState;
}
