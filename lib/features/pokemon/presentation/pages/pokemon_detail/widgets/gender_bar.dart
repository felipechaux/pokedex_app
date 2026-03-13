import 'package:flutter/material.dart';

class GenderBar extends StatelessWidget {
  const GenderBar({super.key, required this.genderRate});

  final int genderRate;

  @override
  Widget build(BuildContext context) {
    if (genderRate == -1) {
      return const Center(child: Text('Sin género'));
    }

    final femalePct = (genderRate / 8.0);
    final malePct = 1.0 - femalePct;

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 10,
            child: Row(
              children: [
                Expanded(
                  flex: (malePct * 100).toInt(),
                  child: Container(color: Colors.blue[600]),
                ),
                Expanded(
                  flex: (femalePct * 100).toInt(),
                  child: Container(color: Colors.pink[300]),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.male, size: 16, color: Colors.grey[600]),
                Text(
                  ' ${(malePct * 100).toStringAsFixed(1)}%',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.female, size: 16, color: Colors.grey[600]),
                Text(
                  ' ${(femalePct * 100).toStringAsFixed(1)}%',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
