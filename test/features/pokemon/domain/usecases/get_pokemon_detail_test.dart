import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_detail.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late GetPokemonDetail useCase;
  late MockPokemonRepository mockRepository;

  setUp(() {
    mockRepository = MockPokemonRepository();
    useCase = GetPokemonDetail(mockRepository);
  });

  const tPokemon = Pokemon(
    id: 1,
    name: 'bulbasaur',
    imageUrl: 'url',
    types: ['grass'],
    height: 7,
    weight: 69,
    stats: [],
    abilities: [],
    flavorText: 'flavor',
    category: 'category',
    genderRate: 1,
  );

  test('should get pokemon detail from the repository', () async {
    // Arrange
    when(() => mockRepository.getPokemonDetail(id: any(named: 'id')))
        .thenAnswer((_) async => tPokemon);

    // Act
    final result = await useCase(const GetPokemonDetailParams(id: 1));

    // Assert
    expect(result, tPokemon);
    verify(() => mockRepository.getPokemonDetail(id: 1)).called(1);
  });
}
