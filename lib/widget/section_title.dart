import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Color(0xFF414455),
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'SF Pro Text'),
        ),
        const Text(
          "View All",
          style: TextStyle(
              color: Color(0xFF414455),
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: 'SF Pro Text'),
        ),
      ],
    );
  }
}