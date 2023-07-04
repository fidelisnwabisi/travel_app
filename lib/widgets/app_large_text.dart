import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  int size = 30;
  final String text;
  final Color color;

  AppLargeText(
      {super.key, required this.size, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
      ),
    );
  }
}
