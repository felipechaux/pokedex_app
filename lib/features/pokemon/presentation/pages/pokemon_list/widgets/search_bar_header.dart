import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';
import '../../../providers/pokemon_filter_provider.dart';
import 'filter_bottom_sheet.dart';

class SearchBarHeader extends HookConsumerWidget {
  const SearchBarHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final searchController = useTextEditingController(
      text: ref.read(pokemonFilterProvider).searchQuery,
    );
    useListenable(searchController);

    // Synchronize controller text with provider state (e.g., when filters are cleared)
    ref.listen(pokemonFilterProvider.select((s) => s.searchQuery), (
      previous,
      next,
    ) {
      if (next != searchController.text) {
        searchController.text = next;
      }
    });

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: TextField(
                      controller: searchController,
                      onChanged: (value) => ref
                          .read(pokemonFilterProvider.notifier)
                          .updateSearchQuery(value),
                      maxLength: 50,
                      decoration: InputDecoration(
                        hintText: l10n.searchPlaceholder,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: searchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(
                                  Icons.clear,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  HapticFeedback.lightImpact();
                                  searchController.clear();
                                  ref
                                      .read(pokemonFilterProvider.notifier)
                                      .updateSearchQuery('');
                                },
                              )
                            : null,
                        border: InputBorder.none,
                        counterText: '',
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const FilterButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FilterButton extends ConsumerWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => const FilterBottomSheet(),
        );
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey[200]!),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Icon(Icons.tune, color: Colors.grey),
      ),
    );
  }
}
