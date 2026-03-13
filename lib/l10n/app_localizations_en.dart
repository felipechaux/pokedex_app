// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Pokedex';

  @override
  String get pokedex => 'Pokedex';

  @override
  String get favorites => 'Favorites';

  @override
  String get profile => 'Profile';

  @override
  String get language => 'Language';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get settings => 'Settings';

  @override
  String get appearance => 'Appearance';

  @override
  String get notifications => 'Notifications';

  @override
  String get about => 'About';

  @override
  String get logout => 'Logout';

  @override
  String get pokemonDetails => 'Pokemon Details';

  @override
  String get height => 'Height';

  @override
  String get weight => 'Weight';

  @override
  String get abilities => 'Abilities';

  @override
  String get stats => 'Stats';

  @override
  String get noInternet => 'No Internet Connection';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get searchPlaceholder => 'Search Pokémon...';

  @override
  String get comingSoon => 'Coming Soon!';

  @override
  String get comingSoonMessage =>
      'We\'re working on this section. Check back later for updates.';

  @override
  String get weightLabel => 'WEIGHT';

  @override
  String get heightLabel => 'HEIGHT';

  @override
  String get categoryLabel => 'CATEGORY';

  @override
  String get abilityLabel => 'ABILITY';

  @override
  String get genderLabel => 'GENDER';

  @override
  String get weaknessesLabel => 'Weaknesses';

  @override
  String get errorTitle => 'Something went wrong...';

  @override
  String get errorMessage =>
      'We couldn\'t load the information at this time. Please check your connection or try again later.';

  @override
  String get noFavoritesMessage =>
      'You haven\'t marked any Pokémon as a favorite';

  @override
  String get noFavoritesInstruction =>
      'Click the heart icon on your favorite Pokémon and they will appear here.';

  @override
  String get regions => 'Regions';
}
