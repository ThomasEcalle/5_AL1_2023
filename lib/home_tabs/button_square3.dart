import 'package:flutter/material.dart';

class ButtonSquare3 extends StatelessWidget {
  const ButtonSquare3({
    super.key,
    this.color = Colors.white,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
