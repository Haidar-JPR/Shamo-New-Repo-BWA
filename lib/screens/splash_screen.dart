import 'dart:async';

import 'package:flutter/material.dart';

import 'package:shamo_new_app/themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      (() {
        Navigator.pushReplacementNamed(context, '/sign-in');
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Image.asset(
          'assets/logos/logo.png',
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
