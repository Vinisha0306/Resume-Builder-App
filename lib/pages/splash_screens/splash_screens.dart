import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer.periodic(
      Duration(seconds: 3),
      (tick) {
        Navigator.pushReplacementNamed(context, MyRoutes.HomePage);
        tick.cancel();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 100, 149, 237),
          image: DecorationImage(
            image: AssetImage('lib/assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
