import 'package:flutter/material.dart';

import '../widgets/app_button_expanded.dart';
import '../widgets/app_text_bold.dart';
import '../widgets/app_text_field.dart';
import '../widgets/app_text_medium.dart';

class PaymentSettings extends StatelessWidget {
  static const routeName = "/payment-settings";
  const PaymentSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Settings"),
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
      ),
      backgroundColor: const Color(0xFF202020),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextBold(text: "Debit Cards", size: 16),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 156,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 128, 128, 0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      Text("Add New Card",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              AppTextBold(text: "Withdrawal Settings", size: 16),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              AppTextMedium(
                  text:
                      "Add your bank account where you want your wallet funds to return to.",
                  size: 14),
              SizedBox(
                height: 16,
              ),
              AppTextField(title: "Account Number", hint: "Account Number"),
              SizedBox(
                height: 16,
              ),
              AppTextField(title: "Bank Name", hint: "Name of your Bank"),
              SizedBox(
                height: 32,
              ),
              AppButtonExpanded(
                title: "Verify Account",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
