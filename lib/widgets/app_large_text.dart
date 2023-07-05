import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final double size = 30;
  final String text;
  final Color color = Colors.black;

  const AppLargeText({
    super.key,
    size,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
