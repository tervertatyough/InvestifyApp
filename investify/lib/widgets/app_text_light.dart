import 'package:flutter/material.dart';

class AppTextLight extends StatelessWidget {
  final String text;
  final double size;

  const AppTextLight({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white, fontSize: size, fontWeight: FontWeight.w300),
    );
  }
}
