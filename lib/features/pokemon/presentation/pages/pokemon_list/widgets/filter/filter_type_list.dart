import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';

class FilterTypeList extends StatelessWidget {
  final List<String> selectedTypes;
  final void Function(String) onToggle;

  const FilterTypeList({
    super.key,
    required this.selectedTypes,
    required this.onToggle,
  });

  static const _types = [
    'water', 'fire', 'grass', 'electric', 'ice', 'fighting', 'poison',
    'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon',
    'steel', 'fairy', 'normal',
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    String getTypeName(String type) => switch (type) {
          'water' => l10n.typeWater,
          'fire' => l10n.typeFire,
          'grass' => l10n.typeGrass,
          'electric' => l10n.typeElectric,
          'ice' => l10n.typeIce,
          'fighting' => l10n.typeFighting,
          'poison' => l10n.typePoison,
          'ground' => l10n.typeGround,
          'flying' => l10n.typeFlying,
          'psychic' => l10n.typePsychic,
          'bug' => l10n.typeBug,
          'rock' => l10n.typeRock,
          'ghost' => l10n.typeGhost,
          'dragon' => l10n.typeDragon,
          'steel' => l10n.typeSteel,
          'fairy' => l10n.typeFairy,
          'normal' => l10n.typeNormal,
          _ => type,
        };

    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      itemCount: _types.length,
      itemBuilder: (context, index) {
        final type = _types[index];
        final isSelected = selectedTypes.contains(type);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: CheckboxListTile(
            title: Text(
              getTypeName(type),
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected ? Colors.black : Colors.black54,
              ),
            ),
            value: isSelected,
            onChanged: (_) {
              HapticFeedback.lightImpact();
              onToggle(type);
            },
            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: const Color(0xFF1E88E5),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            checkboxShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: BorderSide(color: Colors.grey[300]!, width: 1.5),
          ),
        );
      },
    );
  }
}
