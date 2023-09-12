import 'package:flutter/material.dart';

class CalendarTab extends StatelessWidget {
  const CalendarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: const Center(
        child: Text('Je suis le calendrier'),
      ),
    );
  }
}
