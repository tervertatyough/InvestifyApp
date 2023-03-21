import 'package:flutter/material.dart';

import '../widgets/app_text_bold.dart';
import '../widgets/app_text_light.dart';
import '../widgets/app_text_medium.dart';

class Deposit extends StatelessWidget {
  const Deposit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deposit Money"),
        backgroundColor: Color.fromRGBO(0, 128, 128, 0.2),
      ),
      backgroundColor: const Color(0xFF202020),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const AppTextMedium(
                  text: "Top up your wallet with any of the following options.",
                  size: 14),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color(0xFF2B2B2B),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 128, 128, 0.2),
                          borderRadius: BorderRadius.circular(8.0)),
                      height: 48,
                      width: 48,
                      child: const Icon(
                        Icons.arrow_upward_outlined,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                    title: const AppTextBold(
                      size: 14,
                      text: "Top up via Bank Transfer",
                    ),
                    subtitle: const AppTextLight(
                        text:
                            "Transfer funds into the account number below for instant wallet top-up.",
                        size: 12),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color(0xFF2B2B2B),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 128, 128, 0.2),
                          borderRadius: BorderRadius.circular(8.0)),
                      height: 48,
                      width: 48,
                      child: IconButton(
                        icon: const Icon(
                          Icons.wallet,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    title: const AppTextBold(
                      size: 14,
                      text: "Top up with Debit Card",
                    ),
                    subtitle: const AppTextLight(
                        text:
                            "Use your debit card to instantly top-up your wallet Maximum amount of ₦5,000,000.",
                        size: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
