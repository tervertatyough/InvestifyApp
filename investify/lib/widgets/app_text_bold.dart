import 'package:flutter/material.dart';

class AppTextBold extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const AppTextBold(
      {super.key,
      required this.text,
      required this.size,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w700),
    );
  }
}
