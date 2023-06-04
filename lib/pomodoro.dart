import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

class PromodoApp extends StatelessWidget {
  const PromodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
        colorScheme: const ColorScheme(
          background: Color(0xFFE7626C),
          brightness: Brightness.light,
          error: Colors.red,
          onBackground: Colors.pinkAccent,
          onError: Colors.redAccent,
          onPrimary: Colors.purpleAccent,
          onSecondary: Colors.lightBlueAccent,
          onSurface: Colors.orangeAccent,
          primary: Colors.purple,
          secondary: Colors.lightBlue,
          surface: Colors.orange,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
