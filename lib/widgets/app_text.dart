import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppText extends StatelessWidget {
  double? size;
  int maxLineSize;
  final String text;
  Color? color;

  AppText({
    super.key,
    this.maxLineSize = 3,
    this.size = 16,
    required this.text,
    this.color = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
      maxLines: maxLineSize,
    );
  }
}
