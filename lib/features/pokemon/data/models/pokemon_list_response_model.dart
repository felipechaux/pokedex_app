import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_response_model.freezed.dart';
part 'pokemon_list_response_model.g.dart';

/// Root response wrapper for the GET /pokemon endpoint.
@freezed
abstract class PokemonListResponseModel with _$PokemonListResponseModel {
  const factory PokemonListResponseModel({
    required int count,
    String? next,
    String? previous,
    required List<PokemonResult> results,
  }) = _PokemonListResponseModel;

  factory PokemonListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseModelFromJson(json);
}

/// A single entry in the Pokemon list — name + url only.
@freezed
abstract class PokemonResult with _$PokemonResult {
  const factory PokemonResult({required String name, required String url}) =
      _PokemonResult;

  factory PokemonResult.fromJson(Map<String, dynamic> json) =>
      _$PokemonResultFromJson(json);
}
