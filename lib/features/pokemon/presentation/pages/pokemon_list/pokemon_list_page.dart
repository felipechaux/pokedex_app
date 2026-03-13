import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pokedex_app/core/errors/failures.dart';
import 'package:pokedex_app/core/network/network_info.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'widgets/search_bar_header.dart';
import 'widgets/pokemon_sliver_list.dart';
import 'widgets/pokemon_list_error.dart';
import 'widgets/pokemon_list_skeleton.dart';
import 'widgets/pokemon_bottom_nav.dart';
import '../../providers/pokemon_filter_provider.dart';

/// Displays a paginated grid of Pokemon.
class PokemonListPage extends HookConsumerWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final listState = ref.watch(pokemonListProvider);
    final filteredItemsState = ref.watch(filteredPokemonListProvider);
    final filter = ref.watch(pokemonFilterProvider);
    final scrollController = useScrollController();

    // Infinite scroll listener.
    useEffect(() {
      void listener() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          ref.read(pokemonListProvider.notifier).fetchNextPage();
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);

    // -------------------------------------------------------------------------
    // DEEP SYNC FIX: Immediate UI reaction to connectivity.
    // We don't wait for the data provider if the hardware says we're offline.
    // -------------------------------------------------------------------------
    final connectivityState = ref.watch(connectivityProvider);
    final isOffline = connectivityState.maybeWhen(
      data: (results) => results.contains(ConnectivityResult.none),
      orElse: () => false,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: isOffline
            ? PokemonListError(
                error: Failure.network(
                  message: l10n.noInternet,
                ),
                onRetry: () => ref.invalidate(connectivityProvider),
              )
            : listState.when(
                loading: () => CustomScrollView(
                  slivers: [
                    const SearchBarHeader(),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (_, _) => const PokemonListSkeleton(),
                          childCount: 6,
                        ),
                      ),
                    ),
                  ],
                ),
                error: (error, _) => PokemonListError(
                  error: error,
                  onRetry: () => ref.refresh(pokemonListProvider),
                ),
                data: (state) => CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    const SearchBarHeader(),
                    if (filter.isActive)
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        sliver: SliverToBoxAdapter(
                          child: Row(
                            children: [
                              Text(
                                l10n.resultsFound(filteredItemsState.value?.length ?? 0),
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () => ref.read(pokemonFilterProvider.notifier).clearFilters(),
                                child: Text(
                                  l10n.clearFilter,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    PokemonSliverList(items: filteredItemsState.value ?? []),
                    if (state.isLoadingMore)
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Center(child: CircularProgressIndicator()),
                        ),
                      ),
                  ],
                ),
              ),
      ),
      bottomNavigationBar: const PokemonBottomNav(),
    );
  }
}
