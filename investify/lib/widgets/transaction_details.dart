import 'package:flutter/material.dart';

import 'package:investify/widgets/app_text_light.dart';
import 'package:investify/widgets/app_text_medium.dart';

class TransactionDetails extends StatelessWidget {
  static const routeName = "transaction_details";

  const TransactionDetails({super.key});

  Widget transactionTile(String title, String value) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTextLight(text: title, size: 16),
            AppTextMedium(text: value, size: 16)
          ],
        ),
        const Divider(
          color: Colors.white,
          thickness: 1,
        ),
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
        title: const Text("Transaction Details"),
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
      ),
      backgroundColor: const Color(0xFF202020),
      body: Container(
        margin: const EdgeInsets.only(top: 16),
        height: 300,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 128, 128, 0.05),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              transactionTile("Status", "Successful"),
              transactionTile("Type", "Bought Unit"),
              transactionTile("Amount", "N 600,000.00"),
              transactionTile("ID", "5f92cbf10cf217478ba93561"),
              transactionTile("Date", "Mar 19, 2023 5:20PM")
            ],
          ),
        ),
      ),
    );
  }
}
