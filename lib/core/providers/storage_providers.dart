import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

part 'storage_providers.g.dart';

@Riverpod(keepAlive: true)
SharedPreferences sharedPrefs(Ref ref) {
  throw UnimplementedError(
    'SharedPreferences must be overridden in ProviderScope',
  );
}

@Riverpod(keepAlive: true)
Database database(Ref ref) {
  throw UnimplementedError('Database must be overridden in ProviderScope');
}
