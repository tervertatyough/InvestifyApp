import 'package:flutter/material.dart';

import 'app_text_bold.dart';

class SettingsCard extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const SettingsCard(
      {super.key,
      required this.iconData,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.teal,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 128, 128, 0.2),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.0, color: Colors.teal)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconData,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 16,
                ),
                AppTextBold(text: title, size: 16),
              ],
            ),
            const Icon(
              Icons.chevron_right,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
