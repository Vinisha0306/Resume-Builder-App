import 'package:flutter/material.dart';

class CertifiedCourses extends StatefulWidget {
  const CertifiedCourses({super.key});

  @override
  State<CertifiedCourses> createState() => _CertifiedCoursesState();
}

class _CertifiedCoursesState extends State<CertifiedCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Certified Courses',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
