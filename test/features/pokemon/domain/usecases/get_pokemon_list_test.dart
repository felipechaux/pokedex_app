import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_list_item.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';
import 'package:pokedex_app/features/pokemon/domain/usecases/get_pokemon_list.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late GetPokemonList useCase;
  late MockPokemonRepository mockRepository;

  setUp(() {
    mockRepository = MockPokemonRepository();
    useCase = GetPokemonList(mockRepository);
  });

  final tPokemonList = [
    const PokemonListItem(
      id: 1,
      name: 'bulbasaur',
      imageUrl: 'url',
      types: ['grass', 'poison'],
    ),
  ];

  test('should get pokemon list from the repository', () async {
    // Arrange
    when(() => mockRepository.getPokemonList(
          limit: any(named: 'limit'),
          offset: any(named: 'offset'),
        )).thenAnswer((_) async => tPokemonList);

    // Act
    final result = await useCase(const GetPokemonListParams(limit: 20, offset: 0));

    // Assert
    expect(result, tPokemonList);
    verify(() => mockRepository.getPokemonList(limit: 20, offset: 0)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });
}
