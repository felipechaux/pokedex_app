import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:pokedex_app/core/network/dio_provider.dart';
import 'package:pokedex_app/features/pokemon/data/data_sources/remote/pokemon_remote_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/repository/pokemon_repository_impl.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_list.dart';

part 'pokemon_providers.g.dart';
part 'pokemon_providers.freezed.dart';

// ---------------------------------------------------------------------------
// Infrastructure providers
// ---------------------------------------------------------------------------

@riverpod
PokemonRemoteDataSource pokemonRemoteDataSource(Ref ref) =>
    PokemonRemoteDataSource(ref.watch(dioProvider));

@riverpod
PokemonRepository pokemonRepository(Ref ref) =>
    PokemonRepositoryImpl(ref.watch(pokemonRemoteDataSourceProvider));

// ---------------------------------------------------------------------------
// Use case providers
// ---------------------------------------------------------------------------

@riverpod
GetPokemonList getPokemonList(Ref ref) =>
    GetPokemonList(ref.watch(pokemonRepositoryProvider));

@riverpod
GetPokemonDetail getPokemonDetail(Ref ref) =>
    GetPokemonDetail(ref.watch(pokemonRepositoryProvider));

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
  final pokemon = await useCase(GetPokemonDetailParams(id: id));
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
  );
}

/// A notifier that manages the paginated Pokemon list.
@riverpod
class PokemonListNotifier extends _$PokemonListNotifier {
  @override
  FutureOr<PokemonListPageState> build() async {
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

      // Avoid duplicates
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
    final useCase = ref.read(getPokemonListProvider);
    final items = await useCase(
      GetPokemonListParams(limit: 20, offset: offset),
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

@freezed
abstract class PokemonListPageState with _$PokemonListPageState {
  const factory PokemonListPageState({
    required List<PokemonListItemState> items,
    required int offset,
    required bool isLoadingMore,
  }) = _PokemonListPageState;
}

// ---------------------------------------------------------------------------
// View-model state classes (simple, no Freezed needed for presentation)
// ---------------------------------------------------------------------------

class PokemonListItemState {
  const PokemonListItemState({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
  });

  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
}

class PokemonDetailState {
  const PokemonDetailState({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.height,
    required this.weight,
    required this.stats,
    required this.abilities,
  });

  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final int height;
  final int weight;
  final List<StatState> stats;
  final List<String> abilities;
}

class StatState {
  const StatState({required this.name, required this.baseStat});
  final String name;
  final int baseStat;
}
