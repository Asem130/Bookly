import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class MainListViewItem extends StatelessWidget {
  const MainListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage(AssetesData.testImage)),
          ),
        ),
      ),
    );
  }
}
