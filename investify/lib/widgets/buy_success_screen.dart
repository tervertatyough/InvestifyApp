import 'package:flutter/material.dart';
import 'package:investify/widgets/app_button_expanded.dart';
import 'package:investify/widgets/app_text_bold.dart';
import 'package:investify/widgets/app_text_medium.dart';
import 'package:investify/widgets/invest.dart';
import 'package:investify/widgets/investment_details.dart';
import 'package:investify/widgets/my_asset.dart';

class BuySuccessScreen extends StatelessWidget {
  static const routeName = "/buy-successful";

  const BuySuccessScreen({super.key});

  void close(context) {
    Navigator.of(context).pushReplacementNamed(MyAsset.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    final totalShares = routeArgs['count'];
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              height: 165,
              width: 165,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 80,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            AppTextBold(text: "Success", size: 18),
            SizedBox(
              height: 32,
            ),
            AppTextMedium(
                text: "$totalShares Units Bought Successfully", size: 16),
            SizedBox(
              height: 160,
            ),
            AppButtonExpanded(title: "Done", onPress: () => close(context))
          ],
        ),
      ),
    );
  }
}
