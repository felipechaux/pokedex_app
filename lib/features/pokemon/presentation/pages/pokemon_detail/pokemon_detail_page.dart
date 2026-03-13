import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:pokedex_app/config/theme/app_theme.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/stat_bar.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/type_badge.dart';

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
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: switch (detailAsync) {
        AsyncLoading() => const Center(child: CircularProgressIndicator()),
        AsyncError(:final error) => Center(child: Text('Error: $error')),
        AsyncData(:final value) => _DetailContent(pokemon: value),
      },
    );
  }
}

class _DetailContent extends StatelessWidget {
  const _DetailContent({required this.pokemon});

  final PokemonDetailState pokemon;

  @override
  Widget build(BuildContext context) {
    final primaryType = pokemon.types.isNotEmpty ? pokemon.types.first : 'normal';
    final baseColor = primaryType.typeColor;
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        children: [
          // Header Section: Image and Type Color
          Stack(
            children: [
              Container(
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: baseColor.withValues(alpha: 0.1),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: baseColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Hero(
                  tag: 'pokemon_${pokemon.id}',
                  child: CachedNetworkImage(
                    imageUrl: pokemon.imageUrl,
                    height: 280,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name and ID
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nº${pokemon.id.toString().padLeft(3, '0')}',
                          style: textTheme.titleMedium?.copyWith(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          _capitalize(pokemon.name),
                          style: textTheme.headlineLarge?.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: pokemon.types
                          .map((t) => Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: TypeBadge(type: t),
                              ))
                          .toList(),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                // Stats Summary
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _InfoItem(label: 'WEIGHT', value: '${pokemon.weight / 10} KG'),
                    Container(height: 30, width: 1, color: Colors.grey[200]),
                    _InfoItem(label: 'HEIGHT', value: '${pokemon.height / 10} M'),
                  ],
                ),

                const SizedBox(height: 48),

                // Base Stats
                Text(
                  'BASE STATS',
                  style: textTheme.titleSmall?.copyWith(
                    letterSpacing: 2,
                    fontWeight: FontWeight.w900,
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(height: 20),
                ...pokemon.stats.map((s) => StatBar(stat: s)),
                
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.black87,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
        ),
      ],
    );
  }
}
