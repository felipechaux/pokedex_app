/// Base URL for the PokeAPI v2.
const String kBaseUrl = 'https://pokeapi.co/api/v2/';

/// Default limit for paginated Pokemon lists.
const int kDefaultPokemonLimit = 20;

/// API endpoint paths.
abstract final class ApiEndpoints {
  static const String pokemon = '/pokemon';
  static const String pokemonSpecies = '/pokemon-species';
}

/// Error Messages
const String kNoInternetError =
    'No internet connection. Please check your network.';
const String kNoInternetSimpleError = 'No internet connection';
const String kNoInternetAccessError =
    'No internet access. Please check your connection.';
const String kUnexpectedError = 'Unexpected error';
const String kNetworkErrorPrefix = 'Network error';
