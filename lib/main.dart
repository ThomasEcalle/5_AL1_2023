import 'package:al_2023/lists/lists_screen.dart';
import 'package:al_2023/webservices/webservices_futurebuilder_screen.dart';
import 'package:al_2023/webservices/webservices_screen.dart';
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
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      home: const WebservicesFutureBuilderScreen(),
    );
  }
}
