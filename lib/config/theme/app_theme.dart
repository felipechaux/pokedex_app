import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Centralized Material Design 3 theme for the Pokedex app.
abstract final class AppTheme {
  // Pokémon brand colors
  static const Color _primaryRed = Color(0xFFE53935);
  static const Color _primaryRedLight = Color(0xFFFF6F60);
  static const Color _primaryDark = Color(0xFF1A1A2E);
  static const Color _surfaceDark = Color(0xFF16213E);
  static const Color _cardDark = Color(0xFF0F3460);

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF1B85E7),
      brightness: Brightness.light,
      primary: const Color(0xFF1B85E7),
      surface: Colors.white,
      onSurface: const Color(0xFF2E3133),
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.withValues(alpha: 0.1)),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Color(0xFF2E3133)),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: const Color(0xFF2E3133),
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryRed,
      brightness: Brightness.dark,
      primary: _primaryRed,
      secondary: _primaryRedLight,
      surface: _surfaceDark,
      onSurface: Colors.white,
    ),
    scaffoldBackgroundColor: _primaryDark,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    cardTheme: CardThemeData(
      color: _cardDark,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: _primaryDark,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: _primaryRed.withAlpha(40),
      labelStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: _primaryRedLight,
      ),
      side: BorderSide(color: _primaryRed.withAlpha(80)),
      shape: const StadiumBorder(),
    ),
  );
}

/// Pokemon type → color mapping.
extension PokemonTypeColor on String {
  Color get typeColor => switch (this) {
    'fire' => const Color(0xFFFF9741),
    'water' => const Color(0xFF3B9DD4),
    'grass' => const Color(0xFF74CB48),
    'electric' => const Color(0xFFFBD100),
    'psychic' => const Color(0xFFF66182),
    'ice' => const Color(0xFF9CF6F6),
    'dragon' => const Color(0xFF7037FF),
    'dark' => const Color(0xFF595761),
    'fairy' => const Color(0xFFE69EAC),
    'fighting' => const Color(0xFFC12239),
    'flying' => const Color(0xFFA891EC),
    'poison' => const Color(0xFFA43E9E),
    'ground' => const Color(0xFFDEC16B),
    'rock' => const Color(0xFFB69E31),
    'bug' => const Color(0xFFA7B723),
    'ghost' => const Color(0xFF70559B),
    'steel' => const Color(0xFFB7B9D0),
    'normal' => const Color(0xFFA4ACAF),
    _ => const Color(0xFFA4ACAF),
  };
}
