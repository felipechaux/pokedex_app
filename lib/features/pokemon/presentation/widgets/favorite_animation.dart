import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FavoriteAnimationOverlay extends HookWidget {
  const FavoriteAnimationOverlay({
    super.key,
    required this.isFavorite,
    required this.child,
  });

  final bool isFavorite;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Only trigger when switching from false -> true
    final previousFavorite = usePrevious(isFavorite);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 600),
    );

    useEffect(() {
      if (isFavorite && previousFavorite == false) {
        controller.forward(from: 0.0);
      }
      return null;
    }, [isFavorite]);

    final pulseScale = useAnimation(
      TweenSequence<double>([
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.0, end: 1.5).setCurve(Curves.easeOut),
          weight: 30,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.5, end: 1.0).setCurve(Curves.bounceOut),
          weight: 70,
        ),
      ]).animate(controller),
    );

    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        // Sparkles
        ...List.generate(6, (index) {
          final angle = (index * 60.0) * (math.pi / 180.0);
          final animation = CurvedAnimation(
            parent: controller,
            curve: const Interval(0.2, 1.0, curve: Curves.easeOut),
          );

          return AnimatedBuilder(
            animation: animation,
            builder: (context, _) {
              if (controller.value == 0 || controller.value == 1) return const SizedBox.shrink();
              
              final distance = 15.0 + (animation.value * 20.0);
              final opacity = 1.0 - animation.value;
              final size = 4.0 * (1.0 - animation.value);

              return Positioned(
                left: math.cos(angle) * distance + 10, // Center offset adjustment
                top: math.sin(angle) * distance + 10,
                child: Opacity(
                  opacity: opacity,
                  child: Container(
                    width: size,
                    height: size,
                    decoration: const BoxDecoration(
                      color: Colors.yellowAccent,
                      shape: BoxShape.circle,
                      boxShadow: [
                         BoxShadow(color: Colors.white, blurRadius: 2),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }),
        
        // Pulsing Icon
        Transform.scale(
          scale: isFavorite ? pulseScale : 1.0,
          child: child,
        ),
      ],
    );
  }
}

extension on Tween<double> {
  Animatable<double> setCurve(Curve curve) => chain(CurveTween(curve: curve));
}
