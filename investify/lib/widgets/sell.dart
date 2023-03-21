import 'package:flutter/material.dart';
import 'package:investify/widgets/app_text_medium.dart';

class Sell extends StatelessWidget {
  const Sell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sell Asset"),
          backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
        ),
        backgroundColor: const Color(0xFF202020),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: AppTextMedium(
            text: "You Currently do not have any asset",
            size: 14,
          ),
        ));
  }
}
