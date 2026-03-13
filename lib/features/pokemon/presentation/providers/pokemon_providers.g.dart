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

String _$pokemonRepositoryHash() => r'c19eed03bc949a0c043808355c2544e6f89deb9f';

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

/// Provides the paginated list of Pokemon.

@ProviderFor(pokemonList)
final pokemonListProvider = PokemonListFamily._();

/// Provides the paginated list of Pokemon.

final class PokemonListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PokemonListItemState>>,
          List<PokemonListItemState>,
          FutureOr<List<PokemonListItemState>>
        >
    with
        $FutureModifier<List<PokemonListItemState>>,
        $FutureProvider<List<PokemonListItemState>> {
  /// Provides the paginated list of Pokemon.
  PokemonListProvider._({
    required PokemonListFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'pokemonListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonListHash();

  @override
  String toString() {
    return r'pokemonListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<PokemonListItemState>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PokemonListItemState>> create(Ref ref) {
    final argument = this.argument as int;
    return pokemonList(ref, offset: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonListHash() => r'5a38dd02d7b17dad121a6554e9cb1815659df9a8';

/// Provides the paginated list of Pokemon.

final class PokemonListFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<PokemonListItemState>>, int> {
  PokemonListFamily._()
    : super(
        retry: null,
        name: r'pokemonListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provides the paginated list of Pokemon.

  PokemonListProvider call({int offset = 0}) =>
      PokemonListProvider._(argument: offset, from: this);

  @override
  String toString() => r'pokemonListProvider';
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

String _$pokemonDetailHash() => r'21dbeec07df77f05f8ed4463715f76cf545e7e4a';

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
