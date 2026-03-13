import 'package:flutter/material.dart';

class FilterSectionTitle extends StatelessWidget {
  final String title;

  const FilterSectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          const Icon(Icons.keyboard_arrow_up, color: Colors.black54),
        ],
      ),
    );
  }
}
