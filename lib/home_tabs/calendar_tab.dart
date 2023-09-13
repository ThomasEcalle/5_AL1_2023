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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onButtonTap,
      child: Container(
        color: Colors.transparent,
        child: Center(
          child: ButtonSquare3(
            color: _color,
          ),
        ),
      ),
    );
  }

  void _onButtonTap() {
    print('Hello from calendar');
    setState(() {
      _color = _color == Colors.orange ? Colors.green : Colors.orange;
    });
  }
}
