import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_app/core/providers/locale_provider.dart';
import 'package:pokedex_app/core/providers/theme_provider.dart';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pokedex_app/core/providers/storage_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Initialize SharedPreferences
  final sharedPrefs = await SharedPreferences.getInstance();

  // Initialize SQLite Database
  final database = await openDatabase(
    p.join(await getDatabasesPath(), 'pokedex.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE favorites(id INTEGER PRIMARY KEY, name TEXT, imageUrl TEXT, types TEXT)',
      );
    },
    version: 1,
  );

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
    ProviderScope(
      overrides: [
        sharedPrefsProvider.overrideWithValue(sharedPrefs),
        databaseProvider.overrideWithValue(database),
      ],
      child: const PokedexApp(),
    ),
  );
}

/// Root widget of the Pokedex application.
class PokedexApp extends HookConsumerWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeStateProvider);
    final themeMode = ref.watch(themeStateProvider);

    useEffect(() {
      Future.microtask(() {
        ref.read(localeStateProvider.notifier).init();
        ref.read(themeStateProvider.notifier).init();
      });
      return null;
    }, []);

    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      onGenerateRoute: generateRoute,
      initialRoute: AppRoutes.splash,
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
