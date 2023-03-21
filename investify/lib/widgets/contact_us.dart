import 'package:flutter/material.dart';
import 'package:investify/widgets/app_text_bold.dart';

class ContactUs extends StatelessWidget {
  static const routeName = "/contact-us";
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact Us"),
          backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
        ),
        backgroundColor: const Color(0xFF202020),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: AppTextBold(
            text:
                "You can reach out to us via phone call, email or social media",
            size: 14,
          ),
        ));
  }
}
