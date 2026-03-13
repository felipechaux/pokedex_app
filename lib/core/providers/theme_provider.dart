import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeState extends _$ThemeState {
  static const _key = 'selected_theme_mode';

  @override
  ThemeMode build() {
    // Initial state is system by default
    return ThemeMode.system;
  }

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final modeName = prefs.getString(_key);
    if (modeName != null) {
      state = ThemeMode.values.firstWhere(
        (m) => m.name == modeName,
        orElse: () => ThemeMode.system,
      );
    }
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, mode.name);
  }
}
