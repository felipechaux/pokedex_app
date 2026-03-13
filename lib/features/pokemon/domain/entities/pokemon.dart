import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

/// Core domain entity representing a single Pokemon.
@freezed
abstract class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required String imageUrl,
    required List<String> types,
    required int height,
    required int weight,
    required List<PokemonStat> stats,
    required List<String> abilities,
    required String flavorText,
    required String category,
    required int genderRate,
  }) = _Pokemon;
}

/// A single base stat of a Pokemon.
@freezed
abstract class PokemonStat with _$PokemonStat {
  const factory PokemonStat({
    required String name,
    required int baseStat,
  }) = _PokemonStat;
}
