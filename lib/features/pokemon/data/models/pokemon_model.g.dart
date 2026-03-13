// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) =>
    _PokemonModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStatSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbilitySlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonModelToJson(_PokemonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'stats': instance.stats,
      'abilities': instance.abilities,
      'sprites': instance.sprites,
    };

_PokemonTypeSlot _$PokemonTypeSlotFromJson(Map<String, dynamic> json) =>
    _PokemonTypeSlot(
      slot: (json['slot'] as num).toInt(),
      type: PokemonTypeRef.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeSlotToJson(_PokemonTypeSlot instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};

_PokemonTypeRef _$PokemonTypeRefFromJson(Map<String, dynamic> json) =>
    _PokemonTypeRef(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$PokemonTypeRefToJson(_PokemonTypeRef instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

_PokemonStatSlot _$PokemonStatSlotFromJson(Map<String, dynamic> json) =>
    _PokemonStatSlot(
      baseStat: (json['base_stat'] as num).toInt(),
      stat: PokemonStatRef.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonStatSlotToJson(_PokemonStatSlot instance) =>
    <String, dynamic>{'base_stat': instance.baseStat, 'stat': instance.stat};

_PokemonStatRef _$PokemonStatRefFromJson(Map<String, dynamic> json) =>
    _PokemonStatRef(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$PokemonStatRefToJson(_PokemonStatRef instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

_PokemonAbilitySlot _$PokemonAbilitySlotFromJson(Map<String, dynamic> json) =>
    _PokemonAbilitySlot(
      ability: PokemonAbilityRef.fromJson(
        json['ability'] as Map<String, dynamic>,
      ),
      isHidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$PokemonAbilitySlotToJson(_PokemonAbilitySlot instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

_PokemonAbilityRef _$PokemonAbilityRefFromJson(Map<String, dynamic> json) =>
    _PokemonAbilityRef(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokemonAbilityRefToJson(_PokemonAbilityRef instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

_PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) =>
    _PokemonSprites(
      frontDefault: json['front_default'] as String?,
      other: json['other'] == null
          ? null
          : PokemonOtherSprites.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonSpritesToJson(_PokemonSprites instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'other': instance.other,
    };

_PokemonOtherSprites _$PokemonOtherSpritesFromJson(Map<String, dynamic> json) =>
    _PokemonOtherSprites(
      officialArtwork: json['official-artwork'] == null
          ? null
          : PokemonOfficialArtwork.fromJson(
              json['official-artwork'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PokemonOtherSpritesToJson(
  _PokemonOtherSprites instance,
) => <String, dynamic>{'official-artwork': instance.officialArtwork};

_PokemonOfficialArtwork _$PokemonOfficialArtworkFromJson(
  Map<String, dynamic> json,
) => _PokemonOfficialArtwork(frontDefault: json['front_default'] as String?);

Map<String, dynamic> _$PokemonOfficialArtworkToJson(
  _PokemonOfficialArtwork instance,
) => <String, dynamic>{'front_default': instance.frontDefault};
