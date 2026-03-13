import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_filter_provider.freezed.dart';
part 'pokemon_filter_provider.g.dart';

@freezed
abstract class PokemonFilterState with _$PokemonFilterState {
  const factory PokemonFilterState({
    @Default([]) List<String> selectedTypes,
    @Default('') String searchQuery,
  }) = _PokemonFilterState;

  const PokemonFilterState._();

  bool get isActive => selectedTypes.isNotEmpty || searchQuery.isNotEmpty;
}

@riverpod
class PokemonFilter extends _$PokemonFilter {
  @override
  PokemonFilterState build() => const PokemonFilterState();

  void toggleType(String type) {
    final currentTypes = List<String>.from(state.selectedTypes);
    if (currentTypes.contains(type)) {
      currentTypes.remove(type);
    } else {
      currentTypes.add(type);
    }
    state = state.copyWith(selectedTypes: currentTypes);
  }

  void updateSelectedTypes(List<String> types) {
    state = state.copyWith(selectedTypes: List<String>.from(types));
  }

  void updateSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void clearFilters() {
    state = const PokemonFilterState();
  }
}
