// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Pokédex';

  @override
  String get pokedex => 'Pokédex';

  @override
  String get favorites => 'Favoritos';

  @override
  String get profile => 'Perfil';

  @override
  String get language => 'Idioma';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get settings => 'Ajustes';

  @override
  String get appearance => 'Apariencia';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get about => 'Acerca de';

  @override
  String get logout => 'Cerrar Sesión';

  @override
  String get pokemonDetails => 'Detalles del Pokémon';

  @override
  String get height => 'Altura';

  @override
  String get weight => 'Peso';

  @override
  String get abilities => 'Habilidades';

  @override
  String get stats => 'Estadísticas';

  @override
  String get noInternet => 'Sin conexión a Internet';

  @override
  String get tryAgain => 'Reintentar';

  @override
  String get searchPlaceholder => 'Buscar Pokémon...';

  @override
  String get comingSoon => '¡Muy pronto disponible!';

  @override
  String get comingSoonMessage =>
      'Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.';

  @override
  String get weightLabel => 'PESO';

  @override
  String get heightLabel => 'ALTURA';

  @override
  String get categoryLabel => 'CATEGORÍA';

  @override
  String get abilityLabel => 'HABILIDAD';

  @override
  String get genderLabel => 'GÉNERO';

  @override
  String get weaknessesLabel => 'Debilidades';

  @override
  String get errorTitle => 'Algo salió mal...';

  @override
  String get errorMessage =>
      'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.';

  @override
  String get noFavoritesMessage =>
      'No has marcado ningún Pokémon como favorito';

  @override
  String get noFavoritesInstruction =>
      'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.';

  @override
  String get regions => 'Regiones';

  @override
  String get lightMode => 'Claro';

  @override
  String get darkMode => 'Oscuro';

  @override
  String get systemMode => 'Sistema';

  @override
  String get filterTitle => 'Filtra por tus preferencias';

  @override
  String get type => 'Tipo';

  @override
  String get apply => 'Aplicar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get clearFilter => 'Borrar filtro';

  @override
  String resultsFound(int count) {
    return 'Se han encontrado $count resultados';
  }

  @override
  String get typeWater => 'Agua';

  @override
  String get typeFire => 'Fuego';

  @override
  String get typeGrass => 'Planta';

  @override
  String get typeElectric => 'Eléctrico';

  @override
  String get typeIce => 'Hielo';

  @override
  String get typeFighting => 'Lucha';

  @override
  String get typePoison => 'Veneno';

  @override
  String get typeGround => 'Tierra';

  @override
  String get typeFlying => 'Volador';

  @override
  String get typePsychic => 'Psíquico';

  @override
  String get typeBug => 'Bicho';

  @override
  String get typeRock => 'Roca';

  @override
  String get typeGhost => 'Fantasma';

  @override
  String get typeDragon => 'Dragón';

  @override
  String get typeSteel => 'Acero';

  @override
  String get typeFairy => 'Hada';

  @override
  String get typeNormal => 'Normal';
}
