import 'package:flutter/material.dart';
// import '../widgets/deposit.dart';

import '../widgets/app_text_bold.dart';

class HomeActionButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const HomeActionButton(
      {super.key,
      required this.iconData,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 68,
          width: 68,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 128, 128, 0.2),
              borderRadius: BorderRadius.circular(8.0)),
          child: IconButton(
            onPressed: onTap,
            icon: Icon(
              iconData,
              size: 36,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        AppTextBold(text: title, size: 14),
      ],
    );
  }
}
