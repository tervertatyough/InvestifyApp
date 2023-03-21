import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  static const routeName = "/notifications";
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notifications"),
          backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
        ),
        backgroundColor: const Color(0xFF202020),
        body: const Center(
          child: Text("Hello"),
        ));
  }
}
