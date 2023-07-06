import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double? size = 30;
  final String text;
  final Color color = Colors.black;

  AppLargeText({
    super.key,
    this.size,
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
