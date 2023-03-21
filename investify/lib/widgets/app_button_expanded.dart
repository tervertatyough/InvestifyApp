import 'package:flutter/material.dart';

class AppButtonExpanded extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  const AppButtonExpanded(
      {super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPress,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.teal),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
              ),
            ),
            child: Text(title),
          ),
        ),
      ],
    );
  }
}
