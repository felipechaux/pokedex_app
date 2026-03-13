// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pokemonRemoteDataSource)
final pokemonRemoteDataSourceProvider = PokemonRemoteDataSourceProvider._();

final class PokemonRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PokemonRemoteDataSource,
          PokemonRemoteDataSource,
          PokemonRemoteDataSource
        >
    with $Provider<PokemonRemoteDataSource> {
  PokemonRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PokemonRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokemonRemoteDataSource create(Ref ref) {
    return pokemonRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonRemoteDataSource>(value),
    );
  }
}

String _$pokemonRemoteDataSourceHash() =>
    r'6d1fb5a34c78bcfdfd7db21f33e75056daf3abfe';

@ProviderFor(pokemonLocalDataSource)
final pokemonLocalDataSourceProvider = PokemonLocalDataSourceProvider._();

final class PokemonLocalDataSourceProvider
    extends
        $FunctionalProvider<
          PokemonLocalDataSource,
          PokemonLocalDataSource,
          PokemonLocalDataSource
        >
    with $Provider<PokemonLocalDataSource> {
  PokemonLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<PokemonLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokemonLocalDataSource create(Ref ref) {
    return pokemonLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonLocalDataSource>(value),
    );
  }
}

String _$pokemonLocalDataSourceHash() =>
    r'4a7895b7b5822020e40502adda85e65889a99de3';

@ProviderFor(pokemonRepository)
final pokemonRepositoryProvider = PokemonRepositoryProvider._();

final class PokemonRepositoryProvider
    extends
        $FunctionalProvider<
          PokemonRepository,
          PokemonRepository,
          PokemonRepository
        >
    with $Provider<PokemonRepository> {
  PokemonRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonRepositoryHash();

  @$internal
  @override
  $ProviderElement<PokemonRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokemonRepository create(Ref ref) {
    return pokemonRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonRepository>(value),
    );
  }
}

String _$pokemonRepositoryHash() => r'69772b0340fccf665d650e634ae068a3c1704ec2';

@ProviderFor(getPokemonList)
final getPokemonListProvider = GetPokemonListProvider._();

final class GetPokemonListProvider
    extends $FunctionalProvider<GetPokemonList, GetPokemonList, GetPokemonList>
    with $Provider<GetPokemonList> {
  GetPokemonListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPokemonListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPokemonListHash();

  @$internal
  @override
  $ProviderElement<GetPokemonList> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPokemonList create(Ref ref) {
    return getPokemonList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPokemonList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPokemonList>(value),
    );
  }
}

String _$getPokemonListHash() => r'fa838f3c61119751b42b97942f44761ec084c89c';

@ProviderFor(getPokemonDetail)
final getPokemonDetailProvider = GetPokemonDetailProvider._();

final class GetPokemonDetailProvider
    extends
        $FunctionalProvider<
          GetPokemonDetail,
          GetPokemonDetail,
          GetPokemonDetail
        >
    with $Provider<GetPokemonDetail> {
  GetPokemonDetailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPokemonDetailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPokemonDetailHash();

  @$internal
  @override
  $ProviderElement<GetPokemonDetail> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPokemonDetail create(Ref ref) {
    return getPokemonDetail(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPokemonDetail value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPokemonDetail>(value),
    );
  }
}

String _$getPokemonDetailHash() => r'0291d5b8d41c7f6e54ad00d1e327210e8727d4bb';

@ProviderFor(toggleFavorite)
final toggleFavoriteProvider = ToggleFavoriteProvider._();

final class ToggleFavoriteProvider
    extends $FunctionalProvider<ToggleFavorite, ToggleFavorite, ToggleFavorite>
    with $Provider<ToggleFavorite> {
  ToggleFavoriteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toggleFavoriteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toggleFavoriteHash();

  @$internal
  @override
  $ProviderElement<ToggleFavorite> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ToggleFavorite create(Ref ref) {
    return toggleFavorite(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ToggleFavorite value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ToggleFavorite>(value),
    );
  }
}

String _$toggleFavoriteHash() => r'87cd4f2d95d9009d79d9763b15d09d42a73982a9';

@ProviderFor(isFavorite)
final isFavoriteProvider = IsFavoriteProvider._();

final class IsFavoriteProvider
    extends $FunctionalProvider<IsFavorite, IsFavorite, IsFavorite>
    with $Provider<IsFavorite> {
  IsFavoriteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isFavoriteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isFavoriteHash();

  @$internal
  @override
  $ProviderElement<IsFavorite> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IsFavorite create(Ref ref) {
    return isFavorite(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IsFavorite value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IsFavorite>(value),
    );
  }
}

String _$isFavoriteHash() => r'471234435e427bbcf056e41b58a58500c21e545f';

@ProviderFor(getFavorites)
final getFavoritesProvider = GetFavoritesProvider._();

final class GetFavoritesProvider
    extends $FunctionalProvider<GetFavorites, GetFavorites, GetFavorites>
    with $Provider<GetFavorites> {
  GetFavoritesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFavoritesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFavoritesHash();

  @$internal
  @override
  $ProviderElement<GetFavorites> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetFavorites create(Ref ref) {
    return getFavorites(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFavorites value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFavorites>(value),
    );
  }
}

String _$getFavoritesHash() => r'373018c8c8169b0298f190f91d1e70a063e9237e';

@ProviderFor(Favorites)
final favoritesProvider = FavoritesProvider._();

final class FavoritesProvider
    extends $AsyncNotifierProvider<Favorites, List<PokemonListItemState>> {
  FavoritesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesHash();

  @$internal
  @override
  Favorites create() => Favorites();
}

String _$favoritesHash() => r'32e2d8a6ec05848ca4108204fade57fdc15fa900';

abstract class _$Favorites extends $AsyncNotifier<List<PokemonListItemState>> {
  FutureOr<List<PokemonListItemState>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<PokemonListItemState>>,
              List<PokemonListItemState>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PokemonListItemState>>,
                List<PokemonListItemState>
              >,
              AsyncValue<List<PokemonListItemState>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(isPokemonFavorite)
final isPokemonFavoriteProvider = IsPokemonFavoriteFamily._();

final class IsPokemonFavoriteProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsPokemonFavoriteProvider._({
    required IsPokemonFavoriteFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'isPokemonFavoriteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$isPokemonFavoriteHash();

  @override
  String toString() {
    return r'isPokemonFavoriteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as int;
    return isPokemonFavorite(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IsPokemonFavoriteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isPokemonFavoriteHash() => r'7259641b3aeb60cca206beab35c27d2cbb743ec4';

final class IsPokemonFavoriteFamily extends $Family
    with $FunctionalFamilyOverride<bool, int> {
  IsPokemonFavoriteFamily._()
    : super(
        retry: null,
        name: r'isPokemonFavoriteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IsPokemonFavoriteProvider call(int id) =>
      IsPokemonFavoriteProvider._(argument: id, from: this);

  @override
  String toString() => r'isPokemonFavoriteProvider';
}

/// Provides detail for a single Pokemon.

@ProviderFor(pokemonDetail)
final pokemonDetailProvider = PokemonDetailFamily._();

/// Provides detail for a single Pokemon.

final class PokemonDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<PokemonDetailState>,
          PokemonDetailState,
          FutureOr<PokemonDetailState>
        >
    with
        $FutureModifier<PokemonDetailState>,
        $FutureProvider<PokemonDetailState> {
  /// Provides detail for a single Pokemon.
  PokemonDetailProvider._({
    required PokemonDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'pokemonDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonDetailHash();

  @override
  String toString() {
    return r'pokemonDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PokemonDetailState> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PokemonDetailState> create(Ref ref) {
    final argument = this.argument as int;
    return pokemonDetail(ref, id: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonDetailHash() => r'4c2ebc628b1886b5083defeac6e58614cda50a60';

/// Provides detail for a single Pokemon.

final class PokemonDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PokemonDetailState>, int> {
  PokemonDetailFamily._()
    : super(
        retry: null,
        name: r'pokemonDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provides detail for a single Pokemon.

  PokemonDetailProvider call({required int id}) =>
      PokemonDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'pokemonDetailProvider';
}

/// A notifier that manages the paginated Pokemon list.

@ProviderFor(PokemonListNotifier)
final pokemonListProvider = PokemonListNotifierProvider._();

/// A notifier that manages the paginated Pokemon list.
final class PokemonListNotifierProvider
    extends $AsyncNotifierProvider<PokemonListNotifier, PokemonListPageState> {
  /// A notifier that manages the paginated Pokemon list.
  PokemonListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonListProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonListNotifierHash();

  @$internal
  @override
  PokemonListNotifier create() => PokemonListNotifier();
}

String _$pokemonListNotifierHash() =>
    r'1dadc136eba82edc6899fc07889acef053f6b627';

/// A notifier that manages the paginated Pokemon list.

abstract class _$PokemonListNotifier
    extends $AsyncNotifier<PokemonListPageState> {
  FutureOr<PokemonListPageState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<PokemonListPageState>, PokemonListPageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PokemonListPageState>,
                PokemonListPageState
              >,
              AsyncValue<PokemonListPageState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
