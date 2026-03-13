import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_list_item.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_detail.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_list.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pokedex_app/core/network/network_info.dart';

class MockGetPokemonList extends Mock implements GetPokemonList {}
class MockGetPokemonDetail extends Mock implements GetPokemonDetail {}
class MockNetworkInfo extends Mock implements NetworkInfo {}

class FakeGetPokemonDetailParams extends Fake implements GetPokemonDetailParams {}

void main() {
  late ProviderContainer container;
  late MockGetPokemonList mockGetPokemonList;
  late MockGetPokemonDetail mockGetPokemonDetail;
  late MockNetworkInfo mockNetworkInfo;

  setUpAll(() {
    registerFallbackValue(const GetPokemonListParams());
    registerFallbackValue(const GetPokemonDetailParams(id: 1));
  });

  setUp(() {
    mockGetPokemonList = MockGetPokemonList();
    mockGetPokemonDetail = MockGetPokemonDetail();
    mockNetworkInfo = MockNetworkInfo();

    // Default mock behavior
    when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);

    container = ProviderContainer(
      overrides: [
        getPokemonListProvider.overrideWithValue(mockGetPokemonList),
        getPokemonDetailProvider.overrideWithValue(mockGetPokemonDetail),
        networkInfoProvider.overrideWithValue(mockNetworkInfo),
        connectivityProvider.overrideWith((ref) => Stream.value([ConnectivityResult.wifi])),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  final tPokemonItems = [
    const PokemonListItem(id: 1, name: 'bulbasaur', imageUrl: 'url', types: ['grass']),
  ];

  test('initial state should be loading and then data', () async {
    // Arrange
    when(() => mockGetPokemonList(any())).thenAnswer((_) async => tPokemonItems);

    // Assert the provider starts in loading state
    expect(
      container.read(pokemonListProvider),
      const AsyncValue<PokemonListPageState>.loading(),
    );

    // Wait for the provider to complete
    final result = await container.read(pokemonListProvider.future);

    // Assert
    expect(result.items.length, 1);
    expect(result.items.first.name, 'bulbasaur');
    expect(result.offset, 0);
  });

  test('fetchNextPage should append items', () async {
    // Arrange
    when(() => mockGetPokemonList(any())).thenAnswer((_) async => tPokemonItems);

    // Initialize data
    await container.read(pokemonListProvider.future);

    // Mock next page
    final tNextPageItems = [
      const PokemonListItem(id: 2, name: 'ivysaur', imageUrl: 'url', types: ['grass']),
    ];
    when(() => mockGetPokemonList(any())).thenAnswer((_) async => tNextPageItems);

    // Act
    await container.read(pokemonListProvider.notifier).fetchNextPage();

    // Assert
    final state = container.read(pokemonListProvider).value;
    expect(state?.items.length, 2);
    expect(state?.items[1].name, 'ivysaur');
    expect(state?.offset, 20);
  });

  test('pokemonDetail provider should return data', () async {
    // Arrange
    const tPokemon = Pokemon(
      id: 1,
      name: 'bulbasaur',
      imageUrl: 'url',
      types: ['grass'],
      height: 7,
      weight: 69,
      stats: [],
      abilities: [],
    );
    when(() => mockGetPokemonDetail(any())).thenAnswer((_) async => tPokemon);

    // Act
    final result = await container.read(pokemonDetailProvider(id: 1).future);

    // Assert
    expect(result.id, 1);
    expect(result.name, 'bulbasaur');
    verify(() => mockGetPokemonDetail(any())).called(1);
  });
}
