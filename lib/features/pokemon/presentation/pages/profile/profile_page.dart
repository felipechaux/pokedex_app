import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';
import 'package:pokedex_app/core/providers/locale_provider.dart';
import 'package:pokedex_app/core/providers/theme_provider.dart';
import 'package:pokedex_app/features/pokemon/presentation/pages/pokemon_list/widgets/pokemon_bottom_nav.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_section_header.dart';
import 'widgets/profile_setting_tile.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final currentLocale = ref.watch(localeStateProvider);
    final themeMode = ref.watch(themeStateProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(l10n.profile),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const ProfileHeader(
              name: 'Ash Ketchum',
              title: 'Pokemon Master',
            ),
            const SizedBox(height: 40),

            // Settings Section
            ProfileSectionHeader(title: l10n.settings),
            const SizedBox(height: 10),
            ProfileSettingTile(
              icon: Icons.language,
              title: l10n.language,
              trailing: DropdownButton<String>(
                value: ['en', 'es'].contains(currentLocale.languageCode) 
                    ? currentLocale.languageCode 
                    : 'en',
                underline: const SizedBox(),
                items: [
                  DropdownMenuItem(
                    value: 'en',
                    child: Text(l10n.english),
                  ),
                  DropdownMenuItem(
                    value: 'es',
                    child: Text(l10n.spanish),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) {
                    ref.read(localeStateProvider.notifier).setLocale(Locale(value));
                  }
                },
              ),
            ),
            ProfileSettingTile(
              icon: Icons.palette,
              title: l10n.appearance,
              trailing: DropdownButton<ThemeMode>(
                value: themeMode == ThemeMode.system ? ThemeMode.light : themeMode,
                underline: const SizedBox(),
                items: [
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text(l10n.lightMode),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text(l10n.darkMode),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) {
                    ref.read(themeStateProvider.notifier).setThemeMode(value);
                  }
                },
              ),
            ),

            const SizedBox(height: 24),
            // About Section
            ProfileSectionHeader(title: l10n.about),
            const SizedBox(height: 10),
            ProfileSettingTile(
              icon: Icons.info_outline,
              title: 'App Version',
              trailing: Text(
                '1.0.0',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white70
                      : Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: const PokemonBottomNav(currentIndex: 3),
    );
  }
}
