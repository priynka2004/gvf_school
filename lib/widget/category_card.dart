import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String iconAsset;
  final Color textColor;
  final Color boxColor;

  const CategoryCard({
    super.key,
    required this.title,
    required this.iconAsset,
    required this.textColor,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: boxColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconAsset,
            width: 40, // Set image width
            height: 40, // Set image height
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: textColor, // Text color separate from icon color
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
