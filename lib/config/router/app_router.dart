import 'package:flutter/material.dart';

import '../../features/pokemon/presentation/pages/pokemon_detail/pokemon_detail_page.dart';
import '../../features/pokemon/presentation/pages/pokemon_list/pokemon_list_page.dart';

/// Named route constants.
abstract final class AppRoutes {
  static const String pokemonList = '/';
  static const String pokemonDetail = '/pokemon/:id';
}

/// Generates routes for the app.
Route<dynamic> generateRoute(RouteSettings settings) {
  return switch (settings.name) {
    AppRoutes.pokemonList => MaterialPageRoute<void>(
        builder: (_) => const PokemonListPage(),
        settings: settings,
      ),
    AppRoutes.pokemonDetail => MaterialPageRoute<void>(
        builder: (_) {
          final id = settings.arguments! as int;
          return PokemonDetailPage(pokemonId: id);
        },
        settings: settings,
      ),
    _ => MaterialPageRoute<void>(
        builder: (_) => const Scaffold(
          body: Center(child: Text('Page not found')),
        ),
      ),
  };
}
