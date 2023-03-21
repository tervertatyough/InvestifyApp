import 'package:flutter/material.dart';

import 'app_text_bold.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String hint;

  const AppTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextBold(text: title, size: 14),
        const SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hint,
            filled: true,
            hintStyle: const TextStyle(color: Colors.black45),
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
