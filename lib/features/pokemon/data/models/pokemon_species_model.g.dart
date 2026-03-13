// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonSpeciesModel _$PokemonSpeciesModelFromJson(Map<String, dynamic> json) =>
    _PokemonSpeciesModel(
      genderRate: (json['gender_rate'] as num).toInt(),
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorTextEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => GenusEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonSpeciesModelToJson(
  _PokemonSpeciesModel instance,
) => <String, dynamic>{
  'gender_rate': instance.genderRate,
  'flavor_text_entries': instance.flavorTextEntries,
  'genera': instance.genera,
};

_FlavorTextEntry _$FlavorTextEntryFromJson(Map<String, dynamic> json) =>
    _FlavorTextEntry(
      flavorText: json['flavor_text'] as String,
      language: LanguageRef.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlavorTextEntryToJson(_FlavorTextEntry instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
    };

_GenusEntry _$GenusEntryFromJson(Map<String, dynamic> json) => _GenusEntry(
  genus: json['genus'] as String,
  language: LanguageRef.fromJson(json['language'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenusEntryToJson(_GenusEntry instance) =>
    <String, dynamic>{'genus': instance.genus, 'language': instance.language};

_LanguageRef _$LanguageRefFromJson(Map<String, dynamic> json) =>
    _LanguageRef(name: json['name'] as String);

Map<String, dynamic> _$LanguageRefToJson(_LanguageRef instance) =>
    <String, dynamic>{'name': instance.name};
