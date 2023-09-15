import 'package:al_2023/navigation/navigation_screen.dart';
import 'package:al_2023/navigation/screens/second_screen.dart';
import 'package:al_2023/navigation/screens/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const NavigationScreen(),
        SecondScreen.routeName: (context) => const SecondScreen(),
      },
      onGenerateRoute: (RouteSettings routeSettings) {
        Widget route = const SizedBox();

        switch (routeSettings.name) {
          case ThirdScreen.routeName:
            if (routeSettings.arguments is int) {
              route = ThirdScreen(articleId: routeSettings.arguments as int);
            }
        }

        return MaterialPageRoute(builder: (context) => route);
      },
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
