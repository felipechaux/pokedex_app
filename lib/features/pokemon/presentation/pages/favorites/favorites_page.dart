import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_app/features/pokemon/presentation/providers/pokemon_providers.dart';
import 'package:pokedex_app/features/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:pokedex_app/features/pokemon/presentation/pages/pokemon_list/widgets/pokemon_bottom_nav.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritesProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: favoritesAsync.when(
        data: (favorites) => favorites.isEmpty
            ? const _EmptyFavorites()
            : ListView.padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: favorites
                      .map(
                        (p) => Dismissible(
                          key: Key('fav_${p.id}'),
                          direction: DismissDirection.endToStart,
                          onDismissed: (direction) {
                            ref.read(favoritesProvider.notifier).toggle(p);
                          },
                          background: Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            padding: const EdgeInsets.only(right: 24),
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE53935),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Icon(
                              Icons.delete_outline,
                              color: Colors.white,
                              size: 32,
                            ),
                          ),
                          child: PokemonCard(item: p, isFavoritePage: true),
                        ),
                      )
                      .toList(),
                ),
              ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
      bottomNavigationBar: const PokemonBottomNav(currentIndex: 2),
    );
  }
}

class ListView extends StatelessWidget {
  const ListView.padding({
    super.key,
    required this.padding,
    required this.child,
  });
  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(padding: padding, child: child);
  }
}

class _EmptyFavorites extends StatelessWidget {
  const _EmptyFavorites();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/empty_state.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 32),
          const Text(
            'No has marcado ningún Pokémon como favorito',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54, height: 1.5),
          ),
        ],
      ),
    );
  }
}
