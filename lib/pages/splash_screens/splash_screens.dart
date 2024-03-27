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
      const Duration(seconds: 2),
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 100, 149, 237),
        ),
        alignment: Alignment.center,
        child: Transform.scale(
          scale: 1.3,
          child: Image.asset(
            'lib/assets/images/logo.png',
          ),
        ),
      ),
    );
  }
}
