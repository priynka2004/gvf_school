import 'package:flutter/material.dart';
import 'package:gvf_school/widget/course_card.dart';

class CourseGridView extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      "title": "Software Course",
      "price": "\$120.00",
      "lessons": "28 lessons",
      "reviews": "4.8 (382 reviews)"
    },
    {
      "title": "Basic UI/UX Design",
      "price": "\$104.00",
      "lessons": "26 lessons",
      "reviews": "4.6 (471 reviews)"
    },
    {
      "title": "3D Character Design",
      "price": "\$138.00",
      "lessons": "16 lessons",
      "reviews": "4.9 (285 reviews)"
    },
    {
      "title": "Financial Literacy",
      "price": "\$126.00",
      "lessons": "18 lessons",
      "reviews": "4.5 (183 reviews)"
    },
    {
      "title": "Photography Basics",
      "price": "\$115.00",
      "lessons": "20 lessons",
      "reviews": "4.7 (200 reviews)"
    },
    {
      "title": "Digital Marketing",
      "price": "\$98.00",
      "lessons": "15 lessons",
      "reviews": "4.6 (150 reviews)"
    },
  ];

  CourseGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: courses.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) {
          final course = courses[index];
          return CourseCard(
            title: course["title"]!,
            price: course["price"]!,
            lessons: course["lessons"]!,
            reviews: course["reviews"]!,
          );
        },
      ),
    );
  }
}