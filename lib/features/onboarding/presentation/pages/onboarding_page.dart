import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pokedex_app/config/router/app_router.dart';

class OnboardingPage extends HookConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final currentPage = useState(0);

    final pages = [
      _OnboardingData(
        image: 'assets/images/onboarding_1.png',
        title: 'Todos los Pokémon en un solo lugar',
        description:
            'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo',
        buttonText: 'Continuar',
      ),
      _OnboardingData(
        image: 'assets/images/onboarding_2.png',
        title: 'Mantén tu Pokédex actualizada',
        description:
            'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más en la aplicación',
        buttonText: 'Empecemos',
      ),
    ];

    Future<void> completeOnboarding() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isFirstTime', false);
      if (context.mounted) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.pokemonList);
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: pages.length,
                onPageChanged: (index) => currentPage.value = index,
                itemBuilder: (context, index) {
                  final data = pages[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          data.image,
                          height: 300,
                        ),
                        const SizedBox(height: 48),
                        Text(
                          data.title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          data.description,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Colors.black54,
                                height: 1.5,
                              ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            
            // Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: currentPage.value == index ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: currentPage.value == index
                        ? const Color(0xFF1E88E5)
                        : const Color(0xFFBBDEFB),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 48),
            
            // Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: FilledButton(
                  onPressed: () {
                    if (currentPage.value < pages.length - 1) {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      completeOnboarding();
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF1E88E5),
                    side: const BorderSide(color: Color(0xFF1E88E5), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    pages[currentPage.value].buttonText,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OnboardingData {
  final String image;
  final String title;
  final String description;
  final String buttonText;

  _OnboardingData({
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
  });
}
