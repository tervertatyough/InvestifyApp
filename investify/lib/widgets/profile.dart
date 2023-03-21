import 'package:flutter/material.dart';

import '../widgets/account_settings.dart';
import '../widgets/app_text_bold.dart';
import '../widgets/contact_us.dart';
import '../widgets/my_asset.dart';
import '../widgets/next_of_kin_settings.dart';
import '../widgets/notifications.dart';
import '../widgets/password_settings.dart';
import '../widgets/payment_settings.dart';
import '../widgets/settings_card.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  void notification(context) {
    Navigator.of(context).pushNamed(Notifications.routeName);
  }

  void myAsset(context) {
    Navigator.of(context).pushNamed(MyAsset.routeName);
  }

  void accountSettings(context) {
    Navigator.of(context).pushNamed(AccountSettings.routeName);
  }

  void paymentSettings(context) {
    Navigator.of(context).pushNamed(PaymentSettings.routeName);
  }

  void passwordSettings(context) {
    Navigator.of(context).pushNamed(PasswordSettings.routeName);
  }

  void nextOfKinSettings(context) {
    Navigator.of(context).pushNamed(NextOfKinSettings.routeName);
  }

  void contactUs(context) {
    Navigator.of(context).pushNamed(ContactUs.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
        title: const Text("Account"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => notification(context),
          ),
          const SizedBox(
            width: 18,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Container(
                height: 128,
                width: 128,
                margin: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(64),
                  color: Color.fromRGBO(217, 217, 217, 0.1),
                ),
                child: const Icon(
                  Icons.person_outline,
                  size: 72,
                  color: Colors.white60,
                ),
              ),
              const AppTextBold(text: "Terver Tatyough", size: 16),
              const SizedBox(
                height: 32,
              ),
              SettingsCard(
                iconData: Icons.monetization_on_outlined,
                title: "My Assets",
                onTap: () => myAsset(context),
              ),
              SettingsCard(
                iconData: Icons.person_outline,
                title: "Account Settings",
                onTap: () => accountSettings(context),
              ),
              SettingsCard(
                iconData: Icons.add_card,
                title: "Payment Settings",
                onTap: () => paymentSettings(context),
              ),
              SettingsCard(
                iconData: Icons.lock_outline,
                title: "Password Settings",
                onTap: () => passwordSettings(context),
              ),
              SettingsCard(
                iconData: Icons.people_outline,
                title: "Next of Kin Settings",
                onTap: () => nextOfKinSettings(context),
              ),
              SettingsCard(
                iconData: Icons.call_outlined,
                title: "Contact Us",
                onTap: () => contactUs(context),
              ),
              SettingsCard(
                iconData: Icons.logout,
                title: "Log Out",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
