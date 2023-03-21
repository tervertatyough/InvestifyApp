import 'package:flutter/material.dart';

import '../widgets/app_button_expanded.dart';
import '../widgets/app_text_field.dart';
import '../widgets/app_text_medium.dart';
import '../widgets/networth_card.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Withdraw Money"),
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
      ),
      backgroundColor: const Color(0xFF202020),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextMedium(
                text: "Withdraw money to your saved bank acoount.",
                size: 14,
              ),
              SizedBox(
                height: 16,
              ),
              NetWorthCard(amount: 1000963.74, title: "Investify Wallet"),
              SizedBox(
                height: 16,
              ),
              AppTextField(title: "Amount", hint: "Amount"),
              SizedBox(
                height: 8,
              ),
              AppTextField(title: "Reason", hint: "Reason"),
              SizedBox(
                height: 32,
              ),
              AppButtonExpanded(
                title: "Withdraw",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
