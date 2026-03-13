import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/pokemon_list_response_model.dart';
import '../../models/pokemon_model.dart';

part 'pokemon_remote_data_source.g.dart';

/// Retrofit-generated HTTP client for the PokeAPI.
@RestApi()
abstract class PokemonRemoteDataSource {
  factory PokemonRemoteDataSource(Dio dio, {String baseUrl}) =
      _PokemonRemoteDataSource;

  @GET('/pokemon')
  Future<PokemonListResponseModel> getPokemonList({
    @Query('limit') int limit = 20,
    @Query('offset') int offset = 0,
  });

  @GET('/pokemon/{id}')
  Future<PokemonModel> getPokemonDetail(@Path('id') int id);
}
