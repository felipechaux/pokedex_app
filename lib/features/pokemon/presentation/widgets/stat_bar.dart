import 'package:flutter/material.dart';

import '../providers/pokemon_providers.dart';

/// Animated stat bar row.
class StatBar extends StatelessWidget {
  const StatBar({super.key, required this.stat});

  final StatState stat;

  // Max value used for bar percentage calculation.
  static const int _maxStat = 255;

  @override
  Widget build(BuildContext context) {
    final pct = (stat.baseStat / _maxStat).clamp(0.0, 1.0);
    final color = _colorForStat(stat.name);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              _formatStatName(stat.name),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(
            width: 35,
            child: Text(
              stat.baseStat.toString().padLeft(3, '0'),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.0,
                  ),
              textAlign: TextAlign.end,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: pct),
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeOutCubic,
              builder: (_, value, _) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: value,
                  minHeight: 10,
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _colorForStat(String name) => switch (name) {
        'hp' => const Color(0xFFFF5959),
        'attack' => const Color(0xFFF5AC78),
        'defense' => const Color(0xFFFAE078),
        'special-attack' => const Color(0xFF9DB7F5),
        'special-defense' => const Color(0xFFA7DB8D),
        'speed' => const Color(0xFFFA92B2),
        _ => Colors.grey,
      };

  String _formatStatName(String name) => switch (name) {
        'hp' => 'HP',
        'attack' => 'ATK',
        'defense' => 'DEF',
        'special-attack' => 'Sp. ATK',
        'special-defense' => 'Sp. DEF',
        'speed' => 'SPD',
        _ => name,
      };
}
