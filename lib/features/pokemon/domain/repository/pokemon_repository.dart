import '../entities/pokemon.dart';
import '../entities/pokemon_list_item.dart';

/// Contract for the Pokemon data repository.
///
/// The domain layer depends only on this abstraction —
/// the data layer provides the concrete implementation.
abstract interface class PokemonRepository {
  /// Fetches a paginated list of Pokemon.
  Future<List<PokemonListItem>> getPokemonList({
    int limit = 20,
    int offset = 0,
  });

  /// Fetches the full detail of a single Pokemon by [id].
  Future<Pokemon> getPokemonDetail({required int id});
}
