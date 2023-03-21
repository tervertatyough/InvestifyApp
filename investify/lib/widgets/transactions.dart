import 'package:flutter/material.dart';
import 'package:investify/widgets/transaction_details.dart';

import '../dummy_data.dart';
import 'transaction_card.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  void _navigate(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(TransactionDetails.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final transactions = DUMMY_TRANSACTIONS;
    return Scaffold(
        appBar: AppBar(
          title: Text("Transactions"),
          backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
        ),
        backgroundColor: const Color(0xFF202020),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 128, 128, 0.1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Flexible(
                // height: 218,
                child: ListView.separated(
                  itemCount: transactions.length,
                  itemBuilder: (context, index) => TransactionCard(
                    amount: transactions[index].amount,
                    transactionType: transactions[index].transactionType,
                    date: transactions[index].date,
                    onTap: () => _navigate(context),
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1,
                    color: Color.fromRGBO(196, 196, 196, 0.3),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
