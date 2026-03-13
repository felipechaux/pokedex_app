import 'package:flutter/material.dart';

import '../../../../config/theme/app_theme.dart';

/// Colored chip for displaying a Pokemon type.
class TypeBadge extends StatelessWidget {
  const TypeBadge({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    final color = type.typeColor;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(_iconForType(type), size: 13, color: color),
          ),
          const SizedBox(width: 7),
          Text(
            _capitalize(type),
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  IconData _iconForType(String type) => switch (type) {
    'grass' => Icons.eco,
    'fire' => Icons.local_fire_department,
    'water' => Icons.water_drop,
    'electric' => Icons.bolt,
    'poison' => Icons.vaping_rooms, // Approximate
    'flying' => Icons.air,
    'psychic' => Icons.auto_awesome,
    'ice' => Icons.ac_unit,
    'bug' => Icons.pest_control,
    _ => Icons.circle,
  };

  String _capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
}
