import 'package:flutter/material.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_card.dart';

class PokemonSliverList extends StatelessWidget {
  const PokemonSliverList({super.key, required this.items});
  final List<PokemonListItemState> items;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, index) => PokemonCard(item: items[index]),
          childCount: items.length,
        ),
      ),
    );
  }
}
