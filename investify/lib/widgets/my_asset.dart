import 'package:flutter/material.dart';
import 'package:investify/widgets/market_card.dart';

class MyAsset extends StatelessWidget {
  static const routeName = "/my-asset";
  const MyAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Asset"),
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
      ),
      backgroundColor: const Color(0xFF202020),
      body: Center(child: Text("HELLO")),
    );
  }
}
