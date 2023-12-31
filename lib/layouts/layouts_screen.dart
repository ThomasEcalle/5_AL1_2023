import 'package:al_2023/layouts/bubble.dart';
import 'package:flutter/material.dart';

class LayoutsScreen extends StatelessWidget {
  const LayoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Wrap(
                            direction: Axis.horizontal,
                            spacing: 10,
                            runSpacing: 5,
                            children: List.generate(20, (index) => Bubble()),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.green,
                            height: double.infinity,
                            width: double.infinity,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Bubble(),
                                  SizedBox(width: 10),
                                  Bubble(),
                                  Spacer(),
                                  Bubble(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                            width: double.infinity,
                            height: double.infinity,
                            child: Center(
                              child: AdaptiveContainer(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Center(
                        child: AdaptiveContainer(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdaptiveContainer extends StatelessWidget {
  const AdaptiveContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          print(maxWidth);
          return Container(
            height: 100,
            width: maxWidth * .8,
            color: Colors.red.withOpacity(.5),
          );
        }
    );
  }
}

