import 'package:flutter/material.dart';
import 'package:investify/dummy_data.dart';
import 'package:investify/widgets/transaction_card.dart';

class Transactions extends StatelessWidget {
  Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = DUMMY_TRANSACTIONS;
    return Flexible(
      child: ListView.separated(
        itemCount: transactions.length,
        itemBuilder: (context, index) => TransactionCard(
          amount: transactions[index].amount,
          transactionType: transactions[index].transactionType,
          status: transactions[index].status,
          date: transactions[index].date,
          id: transactions[index].id,
        ),
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          color: Color.fromRGBO(196, 196, 196, 0.3),
        ),
      ),
    );
  }
}
