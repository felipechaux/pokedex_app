import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pokedex_app/config/router/app_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  Future<void> _navigateToNext() async {
    // Wait for animation to finish
    await Future<void>.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    final prefs = await SharedPreferences.getInstance();

    if (!mounted) return;

    final isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.onboarding);
    } else {
      Navigator.of(context).pushReplacementNamed(AppRoutes.pokemonList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 2 * 3.14159), // 360 degrees
          duration: const Duration(seconds: 2),
          curve: Curves.elasticOut,
          builder: (context, value, child) {
            return Transform.rotate(
              angle: value,
              child: Image.asset(
                'assets/images/pokedex_splash.png',
                width: 150,
                height: 150,
              ),
            );
          },
        ),
      ),
    );
  }
}
