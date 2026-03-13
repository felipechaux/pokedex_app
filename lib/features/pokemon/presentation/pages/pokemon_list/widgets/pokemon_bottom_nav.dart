import 'package:flutter/material.dart';

import 'package:pokedex_app/config/router/app_router.dart';

class PokemonBottomNav extends StatelessWidget {
  const PokemonBottomNav({
    super.key,
    this.currentIndex = 0,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF1B85E7),
      unselectedItemColor: Colors.grey,
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
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Pokedex'),
        BottomNavigationBarItem(icon: Icon(Icons.language), label: 'Regiones'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ],
    );
  }
}
