import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:investify/widgets/transaction_details.dart';

import '../models/transaction.dart';
import 'app_text_bold.dart';
import 'app_text_medium.dart';

class TransactionCard extends StatelessWidget {
  final String id;
  final double amount;
  final TransactionType transactionType;
  final TransactionStatus status;
  final DateTime date;
  // final VoidCallback onTap;

  const TransactionCard({
    super.key,
    required this.amount,
    required this.transactionType,
    required this.date,
    required this.id,
    required this.status,
  });

  void _transactionDetails(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      TransactionDetails.routeName,
      arguments: id,
    );
  }

  Widget get transactionIcon {
    switch (transactionType) {
      case TransactionType.buy:
        return const Icon(
          Icons.arrow_upward_rounded,
          color: Colors.white,
        );
      case TransactionType.deposit:
        return const Icon(
          Icons.arrow_upward_rounded,
          color: Colors.white,
        );
      case TransactionType.sell:
        return const Icon(
          Icons.arrow_upward_rounded,
          color: Colors.white,
        );
      case TransactionType.send:
        return const Icon(
          Icons.arrow_forward_rounded,
          color: Colors.white,
        );
      case TransactionType.withdraw:
        return const Icon(
          Icons.arrow_downward_rounded,
          color: Colors.white,
        );
      default:
        return const Icon(Icons.arrow_back);
    }
  }

  String get transactionText {
    switch (transactionType) {
      case TransactionType.buy:
        return "Bought Unit";
      case TransactionType.deposit:
        return "Deposit";
      case TransactionType.sell:
        return "Sold Unit";
      case TransactionType.send:
        return "Send";
      case TransactionType.withdraw:
        return "Withdraw";
      default:
        return "Unknown";
    }
  }

  Color get transactionColor {
    switch (transactionType) {
      case TransactionType.buy:
        return Colors.teal;
      case TransactionType.deposit:
        return Colors.teal;
      case TransactionType.sell:
        return Colors.red;
      case TransactionType.send:
        return Colors.red;
      case TransactionType.withdraw:
        return Colors.red;
      default:
        return Colors.teal;
    }
  }

  @override
  Widget build(BuildContext context) {
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
    DateFormat dateFormat = DateFormat.yMMMd().add_jm();
    return InkWell(
      onTap: () => _transactionDetails(context),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(14),
                    ),
                    color: transactionColor,
                  ),
                  child: transactionIcon,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextBold(
                      text: transactionText,
                      size: 14,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      dateFormat.format(date),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            AppTextMedium(text: 'N ${myFormat.format(amount)}', size: 14)
          ],
        ),
      ),
    );
  }
}
