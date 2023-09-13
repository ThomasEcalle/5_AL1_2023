import 'package:al_2023/home_tabs/button_square3.dart';
import 'package:flutter/material.dart';

import 'button_square_2.dart';

class CalendarTab extends StatefulWidget {
  const CalendarTab({super.key});

  @override
  State<CalendarTab> createState() => _CalendarTabState();
}

class _CalendarTabState extends State<CalendarTab> {
  Color _color = Colors.orange;
  double _radius = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onButtonTap,
      child: Container(
        color: Colors.transparent,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(_radius),
            ),
          )
        ),
      ),
    );
  }

  void _onButtonTap() {
    print('Hello from calendar');
    setState(() {
      _color = _color == Colors.orange ? Colors.green : Colors.orange;
      _radius = _radius == 0 ? 20 : 0;
    });
  }
}
