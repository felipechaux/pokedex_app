// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

/// Data model for the GET /pokemon/{id} response.
@freezed
abstract class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<PokemonTypeSlot> types,
    required List<PokemonStatSlot> stats,
    required List<PokemonAbilitySlot> abilities,
    required PokemonSprites sprites,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}

@freezed
abstract class PokemonTypeSlot with _$PokemonTypeSlot {
  const factory PokemonTypeSlot({
    required int slot,
    required PokemonTypeRef type,
  }) = _PokemonTypeSlot;

  factory PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotFromJson(json);
}

@freezed
abstract class PokemonTypeRef with _$PokemonTypeRef {
  const factory PokemonTypeRef({required String name, required String url}) =
      _PokemonTypeRef;

  factory PokemonTypeRef.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeRefFromJson(json);
}

@freezed
abstract class PokemonStatSlot with _$PokemonStatSlot {
  const factory PokemonStatSlot({
    @JsonKey(name: 'base_stat') required int baseStat,
    required PokemonStatRef stat,
  }) = _PokemonStatSlot;

  factory PokemonStatSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatSlotFromJson(json);
}

@freezed
abstract class PokemonStatRef with _$PokemonStatRef {
  const factory PokemonStatRef({required String name, required String url}) =
      _PokemonStatRef;

  factory PokemonStatRef.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatRefFromJson(json);
}

@freezed
abstract class PokemonAbilitySlot with _$PokemonAbilitySlot {
  const factory PokemonAbilitySlot({
    required PokemonAbilityRef ability,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
  }) = _PokemonAbilitySlot;

  factory PokemonAbilitySlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilitySlotFromJson(json);
}

@freezed
abstract class PokemonAbilityRef with _$PokemonAbilityRef {
  const factory PokemonAbilityRef({required String name, required String url}) =
      _PokemonAbilityRef;

  factory PokemonAbilityRef.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityRefFromJson(json);
}

@freezed
abstract class PokemonSprites with _$PokemonSprites {
  const factory PokemonSprites({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'other') PokemonOtherSprites? other,
  }) = _PokemonSprites;

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);
}

@freezed
abstract class PokemonOtherSprites with _$PokemonOtherSprites {
  const factory PokemonOtherSprites({
    @JsonKey(name: 'official-artwork') PokemonOfficialArtwork? officialArtwork,
  }) = _PokemonOtherSprites;

  factory PokemonOtherSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonOtherSpritesFromJson(json);
}

@freezed
abstract class PokemonOfficialArtwork with _$PokemonOfficialArtwork {
  const factory PokemonOfficialArtwork({
    @JsonKey(name: 'front_default') String? frontDefault,
  }) = _PokemonOfficialArtwork;

  factory PokemonOfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$PokemonOfficialArtworkFromJson(json);
}
