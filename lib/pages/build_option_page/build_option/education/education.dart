import 'package:flutter/material.dart';

import '../../../../widgets/Textfiled.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Education',
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
      backgroundColor: Color.fromARGB(255, 100, 149, 237),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextFields(
                  text: "Course/Degree",
                  hintText: "B.Tech Information Technology"),
              const SizedBox(
                height: 15,
              ),
              TextFields(
                  text: 'School/College/Institute',
                  hintText: 'Parul University'),
              const SizedBox(
                height: 15,
              ),
              TextFields(
                text: 'Percentage',
                hintText: '70% or 7.0 CGPA',
              ),
              const SizedBox(
                height: 15,
              ),
              TextFields(
                text: 'Passing Year',
                hintText: '2016',
              )
            ],
          ),
        ),
      ),
    );
  }
}
