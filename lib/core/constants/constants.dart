/// Base URL for the PokeAPI v2.
const String kBaseUrl = 'https://pokeapi.co/api/v2/';

/// Default limit for paginated Pokemon lists.
const int kDefaultPokemonLimit = 20;

/// API endpoint paths.
abstract final class ApiEndpoints {
  static const String pokemon = '/pokemon';
  static const String pokemonSpecies = '/pokemon-species';
}
