import 'package:flutter/material.dart';
import 'package:investify/widgets/app_button_expanded.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_bold.dart';
import '../widgets/app_text_light.dart';

class AccountSettings extends StatelessWidget {
  static const routeName = "/account_settings";
  const AccountSettings({super.key});

  Widget buttonText(String title) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Settings"),
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
      ),
      backgroundColor: const Color(0xFF202020),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextBold(text: "Email Address", size: 14),
            AppTextLight(text: "terver@investify.africa", size: 16),
            const SizedBox(
              height: 16,
            ),
            const AppTextBold(text: "Phone Number", size: 14),
            Row(
              children: [
                const AppTextLight(text: "+2348148060806", size: 16),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.teal,
                    size: 18,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const AppTextBold(
              text: "Username",
              size: 14,
            ),
            const AppTextLight(
              text: "Receive money from friends using your username",
              size: 14,
            ),
            buttonText("Add Username"),
            const SizedBox(
              height: 16,
            ),
            const AppTextBold(text: "Date of Birth", size: 14),
            buttonText("Add Date of Birth"),
            const SizedBox(
              height: 16,
            ),
            const AppTextBold(text: "Address", size: 14),
            buttonText("Add Address"),
            const SizedBox(
              height: 16,
            ),
            const AppTextBold(text: "Bank Verification Number(BVN)", size: 14),
            buttonText("Add BVN"),
            const SizedBox(
              height: 16,
            ),
            const AppTextBold(text: "Pin Settings", size: 14),
            const AppTextLight(
                text: "Investify pin for transactions", size: 14),
            buttonText("Change PIN"),
            const SizedBox(
              height: 32,
            ),
            AppButtonExpanded(
              title: "Save Changes",
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
