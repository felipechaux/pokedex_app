import 'dart:ui';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleState extends _$LocaleState {
  static const _key = 'selected_locale';

  @override
  Locale build() {
    // Initial state is the system locale or English if not set
    // We can't use async here easily in build, so we'll initialize with system locale
    // and then update it from SharedPreferences if available.
    return const Locale('en');
  }

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(_key);
    if (languageCode != null) {
      state = Locale(languageCode);
    } else {
      // Default to system locale if supported, else English
      final systemLocale = PlatformDispatcher.instance.locale.languageCode;
      if (['en', 'es'].contains(systemLocale)) {
        state = Locale(systemLocale);
      }
    }
  }

  Future<void> setLocale(Locale locale) async {
    state = locale;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, locale.languageCode);
  }
}
