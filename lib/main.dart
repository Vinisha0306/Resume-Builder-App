import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/utils/views/screens/Options/personal%20info.dart';
import 'package:resume_builder_app/utils/views/screens/build_option_page.dart';
import 'package:resume_builder_app/utils/views/screens/home_page.dart';
import 'package:resume_builder_app/utils/views/screens/splash_screens.dart';

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
      },
    );
  }
}
