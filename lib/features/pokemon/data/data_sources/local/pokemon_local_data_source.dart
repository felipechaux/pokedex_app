import 'package:sqflite/sqflite.dart';
import '../../../domain/entities/pokemon_list_item.dart';

abstract interface class PokemonLocalDataSource {
  Future<List<PokemonListItem>> getFavorites();
  Future<void> saveFavorite(PokemonListItem pokemon);
  Future<void> removeFavorite(int id);
  Future<bool> isFavorite(int id);
}

class PokemonLocalDataSourceImpl implements PokemonLocalDataSource {
  PokemonLocalDataSourceImpl(this._database);

  final Database _database;
  static const String _tableName = 'favorites';

  @override
  Future<List<PokemonListItem>> getFavorites() async {
    final List<Map<String, dynamic>> maps = await _database.query(_tableName);

    return List.generate(maps.length, (i) {
      return PokemonListItem(
        id: maps[i]['id'] as int,
        name: maps[i]['name'] as String,
        imageUrl: maps[i]['imageUrl'] as String,
        types: (maps[i]['types'] as String).split(','),
      );
    });
  }

  @override
  Future<void> saveFavorite(PokemonListItem pokemon) async {
    await _database.insert(_tableName, {
      'id': pokemon.id,
      'name': pokemon.name,
      'imageUrl': pokemon.imageUrl,
      'types': pokemon.types.join(','),
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<void> removeFavorite(int id) async {
    await _database.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<bool> isFavorite(int id) async {
    final List<Map<String, dynamic>> maps = await _database.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
    return maps.isNotEmpty;
  }
}
