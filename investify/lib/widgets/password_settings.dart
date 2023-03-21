import 'package:flutter/material.dart';
import 'package:investify/widgets/app_button.dart';
import 'package:investify/widgets/app_button_expanded.dart';
import 'package:investify/widgets/app_text_bold.dart';

class PasswordSettings extends StatelessWidget {
  static const routeName = "/password-settings";
  const PasswordSettings({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password Settings"),
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
      ),
      backgroundColor: const Color(0xFF202020),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextBold(text: "Update Password", size: 16),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              AppTextBold(
                  text: "Change your old password to a new one.", size: 14),
              SizedBox(
                height: 32,
              ),
              textField("Enter Old Password"),
              SizedBox(
                height: 32,
              ),
              textField("Enter New Password"),
              SizedBox(
                height: 32,
              ),
              textField("Confirm New Password"),
              SizedBox(
                height: 32,
              ),
              AppButtonExpanded(
                title: "Save Changes",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
