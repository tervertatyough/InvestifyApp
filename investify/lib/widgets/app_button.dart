import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color color;

  const AppButton(
      {super.key,
      required this.title,
      required this.onPress,
      this.color = Colors.teal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onPress,
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 32,
              ),
            ),
          ),
          child: Text(title),
        ),
      ],
    );
  }
}
