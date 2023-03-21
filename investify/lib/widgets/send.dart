import 'package:flutter/material.dart';
import 'package:investify/widgets/app_button.dart';
import 'package:investify/widgets/app_button_expanded.dart';
import 'package:investify/widgets/app_text_field.dart';
import 'package:investify/widgets/app_text_medium.dart';
import 'package:investify/widgets/networth_card.dart';

class Send extends StatelessWidget {
  const Send({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Send Money"),
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
      ),
      backgroundColor: const Color(0xFF202020),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppTextMedium(
                text: "Send funds to Investify Africa user.",
                size: 14,
              ),
              SizedBox(
                height: 16,
              ),
              NetWorthCard(
                title: "Investify Wallet",
                amount: 1000763.74,
              ),
              SizedBox(
                height: 16,
              ),
              AppTextField(
                title: "Amount",
                hint: "Amount",
              ),
              SizedBox(
                height: 8,
              ),
              AppTextField(
                title: "Username",
                hint: "Username",
              ),
              SizedBox(
                height: 8,
              ),
              AppTextField(
                title: "Description",
                hint: "Description",
              ),
              SizedBox(
                height: 32,
              ),
              AppButtonExpanded(
                title: "Send Money",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
