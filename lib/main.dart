import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      home: const WelcomeScreen(),
    );
  }
}