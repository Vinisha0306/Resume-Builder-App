import 'package:flutter/material.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/about/about.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/achievements/achievements.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/certified_courses/certified_courses.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/education/education.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/experience/experience.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/hobbies/hobbies.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/personal_details/personal_details.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/personal_info_page/personal_info_page.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/projects/projects.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option/technical_skills/technical_skills.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/pages/build_option_page/build_option_page.dart';
import 'package:resume_builder_app/pages/home_page/home_page.dart';
import 'package:resume_builder_app/pages/splash_screens/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 100, 149, 237),
      ),
      routes: {
        MyRoutes.SpleshScreen: (context) => SplashScreen(),
        MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.BuildOptionPage: (context) => Build_Option_Page(),
        MyRoutes.BuildOptions[0]['routes']: (context) => PersonalInfo(),
        MyRoutes.BuildOptions[1]['routes']: (context) => PersonalDetails(),
        MyRoutes.BuildOptions[2]['routes']: (context) => Education(),
        MyRoutes.BuildOptions[3]['routes']: (context) => Experience(),
        MyRoutes.BuildOptions[4]['routes']: (context) => CertifiedCourses(),
        MyRoutes.BuildOptions[5]['routes']: (context) => Projects(),
        MyRoutes.BuildOptions[6]['routes']: (context) => TechnicalSkills(),
        MyRoutes.BuildOptions[7]['routes']: (context) => Hobbies(),
        MyRoutes.BuildOptions[8]['routes']: (context) => About(),
        MyRoutes.BuildOptions[9]['routes']: (context) => Achievements(),
      },
    );
  }
}
