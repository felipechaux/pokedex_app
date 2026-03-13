import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon/data/data_sources/remote/pokemon_remote_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/models/pokemon_list_response_model.dart';
import 'package:pokedex_app/features/pokemon/data/models/pokemon_model.dart';
import 'package:pokedex_app/features/pokemon/data/data_sources/local/pokemon_local_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/repository/pokemon_repository_impl.dart';

import 'package:pokedex_app/features/pokemon/data/models/pokemon_species_model.dart';

class MockPokemonRemoteDataSource extends Mock implements PokemonRemoteDataSource {}
class MockPokemonLocalDataSource extends Mock implements PokemonLocalDataSource {}

void main() {
  late PokemonRepositoryImpl repository;
  late MockPokemonRemoteDataSource mockRemoteDataSource;
  late MockPokemonLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockPokemonRemoteDataSource();
    mockLocalDataSource = MockPokemonLocalDataSource();
    repository = PokemonRepositoryImpl(mockRemoteDataSource, mockLocalDataSource);
  });

  group('getPokemonList', () {
    const tPokemonListResponse = PokemonListResponseModel(
      count: 1,
      results: [
        PokemonResult(name: 'bulbasaur', url: 'https://pokeapi.co/api/v2/pokemon/1/'),
      ],
    );

    const tPokemonModel = PokemonModel(
      id: 1,
      name: 'bulbasaur',
      height: 7,
      weight: 69,
      types: [
        PokemonTypeSlot(
          slot: 1,
          type: PokemonTypeRef(name: 'grass', url: 'url'),
        ),
      ],
      stats: [],
      abilities: [],
      sprites: PokemonSprites(frontDefault: 'url'),
    );

    test('should return list of pokemon entities when call is successful', () async {
      // Arrange
      when(() => mockRemoteDataSource.getPokemonList(
            limit: any(named: 'limit'),
            offset: any(named: 'offset'),
          )).thenAnswer((_) async => tPokemonListResponse);
      when(() => mockRemoteDataSource.getPokemonDetail(any()))
          .thenAnswer((_) async => tPokemonModel);

      // Act
      final result = await repository.getPokemonList(limit: 20, offset: 0);

      // Assert
      expect(result, hasLength(1));
      expect(result.first.name, 'bulbasaur');
    });
  });

  group('getPokemonDetail', () {
    const tPokemonModel = PokemonModel(
      id: 1,
      name: 'bulbasaur',
      height: 7,
      weight: 69,
      types: [],
      stats: [],
      abilities: [],
      sprites: PokemonSprites(frontDefault: 'url'),
    );

    const tSpeciesModel = PokemonSpeciesModel(
      genderRate: 1,
      flavorTextEntries: [
        FlavorTextEntry(
          flavorText: 'flavor',
          language: LanguageRef(name: 'es'),
        ),
      ],
      genera: [
        GenusEntry(
          genus: 'category',
          language: LanguageRef(name: 'es'),
        ),
      ],
    );

    test('should return pokemon entity when call is successful', () async {
      // Arrange
      when(() => mockRemoteDataSource.getPokemonDetail(any()))
          .thenAnswer((_) async => tPokemonModel);
      when(() => mockRemoteDataSource.getPokemonSpecies(any()))
          .thenAnswer((_) async => tSpeciesModel);

      // Act
      final result = await repository.getPokemonDetail(id: 1);

      // Assert
      expect(result.id, 1);
      expect(result.flavorText, 'flavor');
      expect(result.category, 'category');
    });
  });
}
