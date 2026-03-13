import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:pokedex_app/config/router/app_router.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:pokedex_app/config/theme/app_theme.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/type_badge.dart';

/// A single Pokemon card in the horizontal list.
class PokemonCard extends ConsumerWidget {
  const PokemonCard({
    super.key,
    required this.item,
    this.isFavoritePage = false,
  });

  final PokemonListItemState item;
  final bool isFavoritePage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final primaryType = item.types.isNotEmpty ? item.types.first : 'normal';
    final baseColor = primaryType.typeColor;
    final isFavorite = ref.watch(isPokemonFavoriteProvider(item.id));

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 130,
      decoration: BoxDecoration(
        color: baseColor.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          // Left Content: Info (Navigates to Detail)
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: isFavoritePage
                  ? null
                  : () => Navigator.of(context).pushNamed(
                        AppRoutes.pokemonDetail,
                        arguments: item.id,
                      ),
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nº${item.id.toString().padLeft(3, '0')}',
                      style: textTheme.labelMedium?.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _capitalize(item.name),
                      style: textTheme.titleLarge?.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Row(
                      children: item.types
                          .take(2)
                          .map(
                            (type) => Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: TypeBadge(type: type),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Right Content: Image & Decoration (Toggles Favorite)
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: isFavoritePage
                  ? null
                  : () => ref.read(favoritesProvider.notifier).toggle(item),
              behavior: HitTestBehavior.opaque,
              child: Stack(
                children: [
                  // Saturated background box
                  Container(
                    decoration: BoxDecoration(
                      color: baseColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  // White circular glow behind the pokemon
                  Center(
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.3),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // Pokemon Image
                  Positioned.fill(
                    child: Hero(
                      tag: 'pokemon_${item.id}',
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CachedNetworkImage(
                          imageUrl: item.imageUrl,
                          fit: BoxFit.contain,
                          placeholder: (_, _) => const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Favorite Icon
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.4),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        size: 18,
                        color: isFavorite ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
}
