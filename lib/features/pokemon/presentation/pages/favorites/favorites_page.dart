import 'package:flutter/material.dart';
import 'package:pokedex_app/features/pokemon/presentation/pages/pokemon_list/widgets/pokemon_bottom_nav.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('Favoritos (Próximamente)')),
      bottomNavigationBar: PokemonBottomNav(currentIndex: 2),
    );
  }
}
