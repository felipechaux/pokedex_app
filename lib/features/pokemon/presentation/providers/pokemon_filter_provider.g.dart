// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokemonFilter)
final pokemonFilterProvider = PokemonFilterProvider._();

final class PokemonFilterProvider
    extends $NotifierProvider<PokemonFilter, PokemonFilterState> {
  PokemonFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonFilterHash();

  @$internal
  @override
  PokemonFilter create() => PokemonFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonFilterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonFilterState>(value),
    );
  }
}

String _$pokemonFilterHash() => r'841ef9b8bd9df735a0cd399440a2c229b9b16ae8';

abstract class _$PokemonFilter extends $Notifier<PokemonFilterState> {
  PokemonFilterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PokemonFilterState, PokemonFilterState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PokemonFilterState, PokemonFilterState>,
              PokemonFilterState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
