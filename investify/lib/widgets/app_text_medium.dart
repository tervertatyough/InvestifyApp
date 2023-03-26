import 'package:flutter/material.dart';

class AppTextMedium extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const AppTextMedium({
    super.key,
    required this.text,
    required this.size,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: size,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
