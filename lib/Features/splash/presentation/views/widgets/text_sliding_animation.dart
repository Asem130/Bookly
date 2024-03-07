import 'package:flutter/material.dart';

class TextSlidingAnimation extends StatelessWidget {
  const TextSlidingAnimation({
    super.key,
    required this.textSlidingAnimation,
  });

  final Animation<Offset> textSlidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: textSlidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: textSlidingAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}