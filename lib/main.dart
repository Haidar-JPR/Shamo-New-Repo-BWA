import 'package:flutter/material.dart';
import 'package:shamo_new_app/screens/sign_in_screen.dart';
import 'package:shamo_new_app/screens/sign_up_screen.dart';
import 'package:shamo_new_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => const SignInScreen(),
        '/sign-up': (context) => const SignUpScreen(),
      },
    );
  }
}
