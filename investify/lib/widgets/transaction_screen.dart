import 'package:flutter/material.dart';

import '../widgets/transactions.dart';
import '../dummy_data.dart';
import 'transaction_card.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transactions"),
          backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
        ),
        backgroundColor: const Color(0xFF202020),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 128, 128, 0.1),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Transactions(),
            ],
          ),
        ));
  }
}
