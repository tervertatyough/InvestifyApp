import 'package:flutter/material.dart';
import 'package:investify/widgets/app_button.dart';
import 'package:investify/widgets/app_button_expanded.dart';
import 'package:investify/widgets/app_text_bold.dart';

class NextOfKinSettings extends StatelessWidget {
  static const routeName = "/next-of-kin-settings";
  const NextOfKinSettings({super.key});

  Widget textField(String hint) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hint,
        filled: true,
        hintStyle: const TextStyle(color: Colors.black45),
        fillColor: Colors.white,
      ),
    );
  }

  Widget textFieldItem(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextBold(text: text, size: 14),
        const SizedBox(
          height: 8,
        ),
        textField(text),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Next of Kin Settings"),
          backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
        ),
        backgroundColor: const Color(0xFF202020),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppTextBold(text: "Personal Details", size: 16),
                const Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 16,
                ),
                textFieldItem("First Name"),
                textFieldItem("Last Name"),
                textFieldItem("Email Address"),
                textFieldItem("Phone Number"),
                const AppTextBold(text: "Other Details", size: 16),
                const Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 16,
                ),
                textFieldItem("Relationship"),
                AppTextBold(text: "Gender", size: 14),
                const SizedBox(
                  height: 32,
                ),
                AppButtonExpanded(
                  title: "Save Changes",
                  onPress: () {},
                )
              ],
            ),
          ),
        ));
  }
}
