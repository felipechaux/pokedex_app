import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon/data/data_sources/remote/pokemon_remote_data_source.dart';
import 'package:pokedex_app/features/pokemon/data/models/pokemon_list_response_model.dart';
import 'package:pokedex_app/features/pokemon/data/models/pokemon_model.dart';
import 'package:pokedex_app/features/pokemon/data/repository/pokemon_repository_impl.dart';

class MockPokemonRemoteDataSource extends Mock implements PokemonRemoteDataSource {}

void main() {
  late PokemonRepositoryImpl repository;
  late MockPokemonRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockPokemonRemoteDataSource();
    repository = PokemonRepositoryImpl(mockRemoteDataSource);
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

    test('should return list of pokemon entities when the call to remote data source is successful', () async {
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
      expect(result.length, 1);
      expect(result.first.name, 'bulbasaur');
      expect(result.first.types, ['grass']);
      verify(() => mockRemoteDataSource.getPokemonList(limit: 20, offset: 0)).called(1);
      verify(() => mockRemoteDataSource.getPokemonDetail(1)).called(1);
    });

    test('should throw exception when the call to remote data source is unsuccessful', () async {
      // Arrange
      when(() => mockRemoteDataSource.getPokemonList(
            limit: any(named: 'limit'),
            offset: any(named: 'offset'),
          )).thenThrow(Exception('Server Error'));

      // Act
      final call = repository.getPokemonList;

      // Assert
      expect(() => call(limit: 20, offset: 0), throwsException);
    });
  });

  group('getPokemonDetail', () {
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

    test('should return pokemon detail entity when call to remote data source is successful', () async {
      // Arrange
      when(() => mockRemoteDataSource.getPokemonDetail(any()))
          .thenAnswer((_) async => tPokemonModel);

      // Act
      final result = await repository.getPokemonDetail(id: 1);

      // Assert
      expect(result.id, 1);
      expect(result.name, 'bulbasaur');
      verify(() => mockRemoteDataSource.getPokemonDetail(1)).called(1);
    });
  });
}
