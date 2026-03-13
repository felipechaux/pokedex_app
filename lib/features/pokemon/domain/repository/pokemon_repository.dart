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
    String language = 'en',
  });

  /// Fetches the full detail of a single Pokemon by [id].
  Future<Pokemon> getPokemonDetail({
    required int id,
    String language = 'en',
  });

  /// Returns all favorite Pokemon objects.
  Future<List<PokemonListItem>> getFavorites();

  /// Toggles the favorite status — saves [item] if not present, removes if it is.
  Future<void> toggleFavorite({required PokemonListItem item});

  /// Checks if a Pokemon is a favorite.
  Future<bool> isFavorite({required int pokemonId});
}
