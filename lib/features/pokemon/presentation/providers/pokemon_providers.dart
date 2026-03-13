import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:pokedex_app/core/network/dio_provider.dart';
import 'package:pokedex_app/features/pokemon/data/data_sources/remote/pokemon_remote_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/repository/pokemon_repository_impl.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_list.dart';

part 'pokemon_providers.g.dart';

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

/// Provides the paginated list of Pokemon.
@riverpod
Future<List<PokemonListItemState>> pokemonList(
  Ref ref, {
  int offset = 0,
}) async {
  final useCase = ref.watch(getPokemonListProvider);
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
