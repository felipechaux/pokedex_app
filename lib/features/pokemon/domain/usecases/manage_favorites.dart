import 'package:pokedex_app/features/pokemon/domain/entities/pokemon_list_item.dart';
import 'package:pokedex_app/features/pokemon/domain/repository/pokemon_repository.dart';

class ToggleFavorite {
  const ToggleFavorite(this._repository);
  final PokemonRepository _repository;

  Future<void> call(PokemonListItem item) async {
    await _repository.toggleFavorite(item: item);
  }
}

class IsFavorite {
  const IsFavorite(this._repository);
  final PokemonRepository _repository;

  Future<bool> call(int id) async {
    return _repository.isFavorite(pokemonId: id);
  }
}

class GetFavorites {
  const GetFavorites(this._repository);
  final PokemonRepository _repository;

  Future<List<PokemonListItem>> call() async {
    return _repository.getFavorites();
  }
}
