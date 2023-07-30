import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
  super.key,
  required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // animation it's going to listen to
        animation: slidingAnimation,
        // it takes context and widget
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Free Books World',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          );
        });
  }
}