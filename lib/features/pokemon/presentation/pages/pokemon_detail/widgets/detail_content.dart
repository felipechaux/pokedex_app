import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';
import 'package:pokedex_app/config/theme/app_theme.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/type_badge.dart';
import 'gender_bar.dart';
import 'stats_box.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({super.key, required this.pokemon});

  final PokemonDetailState pokemon;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final primaryType = pokemon.types.isNotEmpty ? pokemon.types.first : 'normal';
    final baseColor = primaryType.typeColor;
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section: Curved Background and Sprite
          Stack(
            children: [
              ClipPath(
                clipper: HeaderClipper(),
                child: Container(
                  height: 380,
                  width: double.infinity,
                  color: baseColor,
                ),
              ),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Type background icon
                      Opacity(
                        opacity: 0.3,
                        child: Icon(
                          _iconForType(primaryType),
                          size: 280,
                          color: Colors.white,
                        ),
                      ),
                      Hero(
                        tag: 'pokemon_${pokemon.id}',
                        child: CachedNetworkImage(
                          imageUrl: pokemon.imageUrl,
                          height: 240,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name and ID
                Text(
                  _capitalize(pokemon.name),
                  style: textTheme.headlineLarge?.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                Text(
                  'Nº${pokemon.id.toString().padLeft(3, '0')}',
                  style: textTheme.titleMedium?.copyWith(
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 16),

                // Types
                Row(
                  children: pokemon.types
                      .map(
                        (t) => Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: TypeBadge(type: t),
                        ),
                      )
                      .toList(),
                ),

                const SizedBox(height: 12),

                // Description (Flavor Text)
                Text(
                  pokemon.flavorText,
                  style: textTheme.bodyLarge?.copyWith(
                    color: Colors.black87,
                    height: 1.3,
                  ),
                ),

                const SizedBox(height: 12),

                // Info Grid (Stats Summary)
                GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 2.0,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    StatsBox(
                      label: l10n.weightLabel,
                      value: '${pokemon.weight / 10} kg',
                      icon: Icons.scale_outlined,
                    ),
                    StatsBox(
                      label: l10n.heightLabel,
                      value: '${pokemon.height / 10} m',
                      icon: Icons.height,
                    ),
                    StatsBox(
                      label: l10n.categoryLabel,
                      value: pokemon.category.toUpperCase(),
                      icon: Icons.grid_view_outlined,
                    ),
                    StatsBox(
                      label: l10n.abilityLabel,
                      value: pokemon.abilities.isNotEmpty
                          ? _capitalize(pokemon.abilities.first)
                          : '-',
                      icon: Icons.stream,
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                // Gender Distribution
                Center(
                  child: Text(
                    l10n.genderLabel,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                GenderBar(genderRate: pokemon.genderRate),

                const SizedBox(height: 32),

                // Weaknesses (Debilidades)
                Text(
                  l10n.weaknessesLabel,
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: _mockWeaknesses(
                    primaryType,
                  ).map((t) => TypeBadge(type: t)).toList(),
                ),

                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);

  IconData _iconForType(String type) => switch (type) {
    'grass' => Icons.eco,
    'fire' => Icons.local_fire_department,
    'water' => Icons.water_drop,
    'electric' => Icons.bolt,
    _ => Icons.catching_pokemon,
  };

  List<String> _mockWeaknesses(String type) => switch (type) {
    'grass' => ['fire', 'psychic', 'ice', 'flying'],
    _ => ['normal'],
  };
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height * 0.8,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
