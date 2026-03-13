import 'package:dio/dio.dart';
import 'package:pokedex_app/core/errors/failures.dart';

import 'package:pokedex_app/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_list_item.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon/data/data_sources/remote/pokemon_remote_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/models/pokemon_model.dart';

/// Concrete implementation of [PokemonRepository].
///
/// Communicates with the remote data source and maps the
/// API models to domain entities before returning them.
final class PokemonRepositoryImpl implements PokemonRepository {
  const PokemonRepositoryImpl(this._remoteDataSource);

  final PokemonRemoteDataSource _remoteDataSource;

  @override
  Future<List<PokemonListItem>> getPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final response = await _remoteDataSource.getPokemonList(
        limit: limit,
        offset: offset,
      );

      final results = await Future.wait(
        response.results.map((result) async {
          final id = _extractIdFromUrl(result.url);
          final detail = await _remoteDataSource.getPokemonDetail(id);
          return PokemonListItem(
            id: id,
            name: result.name,
            imageUrl: _buildOfficialArtworkUrl(id),
            types: detail.types.map((t) => t.type.name).toList(),
          );
        }),
      );

      return results;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      if (e.toString().contains('SocketException') || e.toString().contains('Failed host lookup')) {
        throw const Failure.network(message: 'No hay conexión a internet. Verifica tu red.');
      }
      throw Failure.unknown(message: 'Error inesperado: $e');
    }
  }

  @override
  Future<Pokemon> getPokemonDetail({required int id}) async {
    try {
      final model = await _remoteDataSource.getPokemonDetail(id);
      return _toDomainEntity(model);
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      if (e.toString().contains('SocketException') || e.toString().contains('Failed host lookup')) {
        throw const Failure.network(message: 'No hay conexión a internet. Verifica tu red.');
      }
      throw Failure.unknown(message: 'Error inesperado: $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Mappers
  // ---------------------------------------------------------------------------

  Pokemon _toDomainEntity(PokemonModel model) => Pokemon(
        id: model.id,
        name: model.name,
        imageUrl: model.sprites.other?.officialArtwork?.frontDefault ??
            model.sprites.frontDefault ??
            '',
        types: model.types.map((t) => t.type.name).toList(),
        height: model.height,
        weight: model.weight,
        stats: model.stats
            .map(
              (s) => PokemonStat(
                name: s.stat.name,
                baseStat: s.baseStat,
              ),
            )
            .toList(),
        abilities: model.abilities
            .where((a) => !a.isHidden)
            .map((a) => a.ability.name)
            .toList(),
      );

  Failure _handleDioError(DioException e) {
    final message = (e.type == DioExceptionType.connectionError ||
            e.type == DioExceptionType.connectionTimeout ||
            e.message?.contains('SocketException') == true ||
            e.message?.contains('Failed host lookup') == true)
        ? 'No hay conexión a internet. Verifica tu red.'
        : 'Error de red: ${e.message}';

    return Failure.network(
      message: message,
      statusCode: e.response?.statusCode,
    );
  }

  // ---------------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------------

  int _extractIdFromUrl(String url) {
    final segments = url.split('/')..removeWhere((s) => s.isEmpty);
    return int.parse(segments.last);
  }

  String _buildOfficialArtworkUrl(int id) =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/'
      'sprites/pokemon/other/official-artwork/$id.png';
}
