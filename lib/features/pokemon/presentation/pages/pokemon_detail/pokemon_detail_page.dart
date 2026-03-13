import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:pokedex_app/features/pokemon/presentation/pages/pokemon_list/widgets/pokemon_bottom_nav.dart';
import 'widgets/detail_content.dart';

/// Displays full details for a single Pokemon.
class PokemonDetailPage extends ConsumerWidget {
  const PokemonDetailPage({super.key, required this.pokemonId});

  final int pokemonId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(pokemonDetailProvider(id: pokemonId));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(
              ref.watch(isPokemonFavoriteProvider(pokemonId))
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: ref.watch(isPokemonFavoriteProvider(pokemonId))
                  ? Colors.red
                  : Colors.white,
              size: 28,
            ),
            onPressed: () {
              final detail = detailAsync.value;
              if (detail == null) return;
              
              ref.read(favoritesProvider.notifier).toggle(
                PokemonListItemState(
                  id: detail.id,
                  name: detail.name,
                  imageUrl: detail.imageUrl,
                  types: detail.types,
                ),
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: switch (detailAsync) {
        AsyncLoading() => const Center(child: CircularProgressIndicator()),
        AsyncError(:final error) => Center(child: Text('Error: $error')),
        AsyncData(:final value) => DetailContent(pokemon: value),
      },
      bottomNavigationBar: const PokemonBottomNav(),
    );
  }
}
