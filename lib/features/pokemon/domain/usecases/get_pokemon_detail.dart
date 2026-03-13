import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pokedex_app/core/usecase/usecase.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';

part 'get_pokemon_detail.freezed.dart';

/// Retrieves the full detail of a single Pokemon by its ID.
interface class GetPokemonDetail
    implements UseCase<Pokemon, GetPokemonDetailParams> {
  const GetPokemonDetail(this._repository);

  final PokemonRepository _repository;

  @override
  Future<Pokemon> call(GetPokemonDetailParams params) =>
      _repository.getPokemonDetail(
        id: params.id,
        language: params.language,
      );
}

@freezed
abstract class GetPokemonDetailParams with _$GetPokemonDetailParams {
  const factory GetPokemonDetailParams({
    required int id,
    @Default('en') String language,
  }) = _GetPokemonDetailParams;
}
