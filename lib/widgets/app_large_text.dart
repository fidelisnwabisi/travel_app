import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double? size = 30;
  final String text;
  Color? color = Colors.black;

  AppLargeText({
    super.key,
    this.size,
    required this.text,
    this.color,
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
