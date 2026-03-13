import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_item.freezed.dart';

/// Lightweight entity used for the list screen.
///
/// Only contains the data needed for the list tile — avoids
/// over-fetching on the list screen.
@freezed
abstract class PokemonListItem with _$PokemonListItem {
  const factory PokemonListItem({
    required int id,
    required String name,
    required String imageUrl,
    required List<String> types,
  }) = _PokemonListItem;
}
