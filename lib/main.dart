import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    // ProviderScope is required for Riverpod to function.
    const ProviderScope(
      child: PokedexApp(),
    ),
  );
}

/// Root widget of the Pokedex application.
class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      onGenerateRoute: generateRoute,
      initialRoute: AppRoutes.splash,
    );
  }
}
