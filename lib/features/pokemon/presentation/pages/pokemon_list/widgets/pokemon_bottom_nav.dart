import 'package:flutter/material.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';

import 'package:pokedex_app/config/router/app_router.dart';

class PokemonBottomNav extends StatelessWidget {
  const PokemonBottomNav({
    super.key,
    this.currentIndex = 0,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: theme.scaffoldBackgroundColor,
      selectedItemColor: theme.colorScheme.primary,
      unselectedItemColor: isDark ? Colors.grey : const Color(0xFF2E3133),
      showUnselectedLabels: true,
      selectedLabelStyle:
          const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      onTap: (index) {
        if (index == currentIndex) return;

        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, AppRoutes.pokemonList);
            break;
          case 1:
            Navigator.pushReplacementNamed(context, AppRoutes.regions);
            break;
          case 2:
            Navigator.pushReplacementNamed(context, AppRoutes.favorites);
            break;
          case 3:
            Navigator.pushReplacementNamed(context, AppRoutes.profile);
            break;
        }
      },
      items: [
        BottomNavigationBarItem(icon: const Icon(Icons.home), label: l10n.pokedex),
        BottomNavigationBarItem(icon: const Icon(Icons.language), label: l10n.regions),
        BottomNavigationBarItem(icon: const Icon(Icons.favorite), label: l10n.favorites),
        BottomNavigationBarItem(icon: const Icon(Icons.person), label: l10n.profile),
      ],
    );
  }
}
