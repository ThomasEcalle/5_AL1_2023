import 'package:flutter/material.dart';

class ButtonSquare extends StatefulWidget {
  const ButtonSquare({super.key});

  @override
  State<ButtonSquare> createState() => _ButtonSquareState();
}

class _ButtonSquareState extends State<ButtonSquare> {
  Color _color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.orange ? Colors.blue : Colors.orange;
    });
  }
}
