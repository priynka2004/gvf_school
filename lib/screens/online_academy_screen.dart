import 'package:flutter/material.dart';
import 'package:gvf_school/screens/popular_courses_screen.dart';
import 'package:gvf_school/widget/category_card.dart';
import 'package:gvf_school/widget/popular_course_card.dart';
import 'package:gvf_school/widget/section_title.dart';

class OnlineAcademyScreen extends StatelessWidget {
  const OnlineAcademyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          "Home",
          style: TextStyle(
              color: Color(0xFF414455),
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, Parsley 👋",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: ('SF Pro Text'),
                  color: Color(0xFF414455),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Find your favorite lesson",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: ('SF Pro Text'),
                  color: Color(0xFFA0A4B8),
                ),
              ),
              const SizedBox(height: 16),
              // Search Bar
              Container(
                width: 386, // Setting the width to 386px
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFFFFFFF),
                    // Background color (white)
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      color: Color(0xFFD7D9E4),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFD7D9E4),
                    ),
                    suffixIcon: const Icon(
                      Icons.format_list_bulleted,
                      color: Color(0xFFD7D9E4),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFEEEEEE), // Border color (light gray)
                        width: 1.5, // Border width
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFEEEEEE),
                        // Border color for the default state
                        width: 1.5, // Border width
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFCCCCCC), // Border color when focused
                        width: 2, // Border width when focused
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(
                  color: const Color(0XFF3E487A),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                        height: 140,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0XFFFFFFFF),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "What would you like to\nlearn today?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blue.shade900,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 24, right: 24),
                                child: Text(
                                  "Get Start",
                                  style: TextStyle(
                                      color: Color(0xFF414455),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Text'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              const SectionTitle(title: "Top Categories"),
              const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                      (index) => CategoryCard(
                    title: [
                      "Design",
                      "Coding",
                      "Language",
                      "Marketing"
                    ][index],
                    iconAsset: [
                      'assets/images/Icon.png',
                      'assets/images/Icon (1).png',
                      'assets/images/Icon (2).png',
                      'assets/images/rect2096.png',
                    ][index],
                    // iconColor: [
                    //   Color(0xFF4A90E2), // Blue for Design
                    //   Color(0xFF50E3C2), // Green for Coding
                    //   Color(0xFFFFA726), // Orange for Language
                    //   Color(0xFFFF4081), // Pink for Marketing
                    // ]
                  //  [index],
                    textColor: [
                      const Color(0xFFA0A4B8),
                      const Color(0xFFA0A4B8),
                      const Color(0xFFA0A4B8),
                      const Color(0xFFA0A4B8),
                      const Color(0xFFA0A4B8),

                    ][index],
                    boxColor: [
                      const Color(0xFFEBECF5),
                      const Color(0xFFE4EFFF),
                      const Color(0xFFF1E0C9),
                      const Color(0xFFE0DDFE),
                    ][index],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

              GestureDetector(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const PopularCourseScreen();
                }));
              },child: const SectionTitle(title: "Popular Courses")),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    4,
                    (index) => const PopularCourseCard(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
