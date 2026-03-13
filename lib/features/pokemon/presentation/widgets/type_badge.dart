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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
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
              color: Colors.white24,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.circle,
              size: 12,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            _capitalize(type),
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
          ),
        ],
      ),
    );
  }

  String _capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
}
