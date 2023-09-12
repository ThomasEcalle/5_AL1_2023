import 'package:al_2023/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
