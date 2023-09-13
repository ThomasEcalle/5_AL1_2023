import 'package:flutter/material.dart';

import 'button_square_2.dart';

class CalendarTab extends StatefulWidget {
  const CalendarTab({super.key});

  @override
  State<CalendarTab> createState() => _CalendarTabState();
}

class _CalendarTabState extends State<CalendarTab> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: Center(
        child: SquareButton2(
          onTap: _onButtonTap,
        ),
      ),
    );
  }

  void _onButtonTap() {
    print('Hello from calendar');
    setState(() {
      _color = _color == Colors.white ? Colors.green : Colors.white;
    });
  }
}
