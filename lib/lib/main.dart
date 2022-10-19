import 'package:flutter/material.dart';
import 'package:first_flutter_application/screens/home_screen.dart';
import 'package:first_flutter_application/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        "/": (context) => OnboardingScreen(),
        "/home": (context) => const HomeScreen()
      },
    );
  }
}