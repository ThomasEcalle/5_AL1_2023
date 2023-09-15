import 'package:al_2023/navigation/build_context_extension.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/second-screen';

  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go back'),
          onPressed: () => _goBack(context),
        ),
      ),
    );
  }

  void _goBack(BuildContext context) {
    context.pop();
  }
}
