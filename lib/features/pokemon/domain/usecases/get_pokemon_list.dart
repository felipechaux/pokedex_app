import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pokedex_app/core/usecase/usecase.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_list_item.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';

part 'get_pokemon_list.freezed.dart';

/// Retrieves a paginated list of Pokemon from the repository.
interface class GetPokemonList
    implements UseCase<List<PokemonListItem>, GetPokemonListParams> {
  const GetPokemonList(this._repository);

  final PokemonRepository _repository;

  @override
  Future<List<PokemonListItem>> call(GetPokemonListParams params) =>
      _repository.getPokemonList(
        limit: params.limit,
        offset: params.offset,
      );
}

@freezed
abstract class GetPokemonListParams with _$GetPokemonListParams {
  const factory GetPokemonListParams({
    @Default(20) int limit,
    @Default(0) int offset,
  }) = _GetPokemonListParams;
}
