import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Disable dynamic font fetching when offline to prevent main-thread blockage
  // and noise in the console. GoogleFonts will fallback to system fonts instantly.
  GoogleFonts.config.allowRuntimeFetching = true;

  // Silence Google Fonts loading errors when offline to prevent "Unhandled Exception"
  // This allows the app to gracefully fallback to system fonts.
  FlutterError.onError = (details) {
    if (details.exception is SocketException ||
        details.exception.toString().contains('fonts.gstatic.com')) {
      return; // Ignore network errors from font loading
    }
    FlutterError.presentError(details);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    if (error is SocketException ||
        error.toString().contains('fonts.gstatic.com')) {
      return true; // Handle silently
    }
    return false;
  };

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
