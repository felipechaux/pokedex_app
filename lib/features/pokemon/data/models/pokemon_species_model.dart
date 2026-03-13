// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species_model.freezed.dart';
part 'pokemon_species_model.g.dart';

/// Data model for the /pokemon-species/{id} response.
@freezed
abstract class PokemonSpeciesModel with _$PokemonSpeciesModel {
  const factory PokemonSpeciesModel({
    @JsonKey(name: 'gender_rate') required int genderRate,
    @JsonKey(name: 'flavor_text_entries')
    required List<FlavorTextEntry> flavorTextEntries,
    required List<GenusEntry> genera,
  }) = _PokemonSpeciesModel;

  factory PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesModelFromJson(json);
}

@freezed
abstract class FlavorTextEntry with _$FlavorTextEntry {
  const factory FlavorTextEntry({
    @JsonKey(name: 'flavor_text') required String flavorText,
    required LanguageRef language,
  }) = _FlavorTextEntry;

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryFromJson(json);
}

@freezed
abstract class GenusEntry with _$GenusEntry {
  const factory GenusEntry({
    required String genus,
    required LanguageRef language,
  }) = _GenusEntry;

  factory GenusEntry.fromJson(Map<String, dynamic> json) =>
      _$GenusEntryFromJson(json);
}

@freezed
abstract class LanguageRef with _$LanguageRef {
  const factory LanguageRef({required String name}) = _LanguageRef;

  factory LanguageRef.fromJson(Map<String, dynamic> json) =>
      _$LanguageRefFromJson(json);
}
