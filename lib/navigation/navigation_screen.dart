import 'package:al_2023/navigation/build_context_extension.dart';
import 'package:al_2023/navigation/screens/first_screen.dart';
import 'package:al_2023/navigation/screens/second_screen.dart';
import 'package:al_2023/navigation/screens/third_screen.dart';
import 'package:al_2023/webservices/remote_user.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Go to first screen'),
              onPressed: () => _goToFirstScreen(context),
            ),
            ElevatedButton(
              child: const Text('Go to second screen'),
              onPressed: () => _goToSecondScreen(context),
            ),
            ElevatedButton(
              child: const Text('Go to third screen'),
              onPressed: () => _goToThirdScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  void _goToFirstScreen(BuildContext context) {
    context.push(
      MaterialPageRoute(
        builder: (context) => const FirstScreen(),
      ),
    );
  }

  void _goToSecondScreen(BuildContext context) {
    Navigator.of(context).pushNamed(SecondScreen.routeName);
  }

  void _goToThirdScreen(BuildContext context) {
    ThirdScreen.navigateTo(context, 423);
  }
}
