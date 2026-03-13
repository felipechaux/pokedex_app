import 'package:flutter/material.dart';

import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/onboarding/presentation/pages/splash_page.dart';
import '../../features/pokemon/presentation/pages/pokemon_detail/pokemon_detail_page.dart';
import '../../features/pokemon/presentation/pages/pokemon_list/pokemon_list_page.dart';

/// Named route constants.
abstract final class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String pokemonList = '/pokemon-list';
  static const String pokemonDetail = '/pokemon-detail';
}

/// Generates routes for the app.
Route<dynamic> generateRoute(RouteSettings settings) {
  return switch (settings.name) {
    AppRoutes.splash => MaterialPageRoute<void>(
        builder: (_) => const SplashPage(),
        settings: settings,
      ),
    AppRoutes.onboarding => MaterialPageRoute<void>(
        builder: (_) => const OnboardingPage(),
        settings: settings,
      ),
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
