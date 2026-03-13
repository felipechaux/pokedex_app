import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_card.dart';

/// Displays a paginated grid of Pokemon.
class PokemonListPage extends HookConsumerWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offset = useState(0);
    final allItems = useState<List<PokemonListItemState>>([]);
    final isLoadingMore = useState(false);
    final scrollController = useScrollController();

    final currentPage = ref.watch(
      pokemonListProvider(offset: offset.value),
    );

    // Append new page items when the provider succeeds.
    useEffect(() {
      if (currentPage is AsyncData<List<PokemonListItemState>>) {
        final newItems = currentPage.value;
        allItems.value = [
          ...allItems.value,
          ...newItems.where(
            (item) => !allItems.value.any((e) => e.id == item.id),
          ),
        ];
        isLoadingMore.value = false;
      }
      return null;
    }, [currentPage]);

    // Infinite scroll listener.
    useEffect(() {
      void listener() {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent - 200 &&
            !isLoadingMore.value) {
          isLoadingMore.value = true;
          offset.value += 20;
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: switch (currentPage) {
          AsyncLoading() when allItems.value.isEmpty => const Center(
              child: CircularProgressIndicator(),
            ),
          AsyncError(:final error) when allItems.value.isEmpty => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 12),
                  Text(
                    'Error: $error',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: () => ref.refresh(
                      pokemonListProvider(offset: offset.value),
                    ),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          _ => CustomScrollView(
              controller: scrollController,
              slivers: [
                // Custom Search Bar Header
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey[200]!),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Procurar Pokémon...',
                                prefixIcon: Icon(Icons.search, color: Colors.grey),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
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
                          child: const Icon(Icons.search, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),

                // Pokemon List
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, index) => PokemonCard(item: allItems.value[index]),
                      childCount: allItems.value.length,
                    ),
                  ),
                ),

                if (isLoadingMore.value)
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),
              ],
            ),
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Pokedex',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Regiones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
