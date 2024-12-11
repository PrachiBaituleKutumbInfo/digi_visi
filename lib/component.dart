import 'package:flutter/material.dart';

// DigiVisi Widget
class DigiVisi extends StatelessWidget {
  final String text;

  const DigiVisi(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 8, 11, 83),
      ),
    );
  }
}
