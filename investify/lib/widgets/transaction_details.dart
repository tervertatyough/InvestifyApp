import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../dummy_data.dart';
import '../widgets/app_text_light.dart';
import '../widgets/app_text_medium.dart';

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
            AppTextMedium(
              text: value,
              size: 16,
              color: Colors.amber,
            )
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
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
    DateFormat dateFormat = DateFormat.yMMMd().add_jm();
    final transactionId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedTransaction = DUMMY_TRANSACTIONS.firstWhere(
      (transaction) => transaction.id == transactionId,
    );

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
          color: Color(0xFF2B2B2B),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              transactionTile("Status", selectedTransaction.status.name),
              transactionTile("Type", selectedTransaction.transactionType.name),
              transactionTile(
                  "Amount", 'N ${myFormat.format(selectedTransaction.amount)}'),
              transactionTile("ID", selectedTransaction.id),
              transactionTile(
                  "Date", dateFormat.format(selectedTransaction.date))
            ],
          ),
        ),
      ),
    );
  }
}
