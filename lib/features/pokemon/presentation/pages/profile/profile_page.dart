import 'package:flutter/material.dart';
import 'package:pokedex_app/features/pokemon/presentation/pages/pokemon_list/widgets/pokemon_bottom_nav.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('Perfil (Próximamente)')),
      bottomNavigationBar: PokemonBottomNav(currentIndex: 3),
    );
  }
}
