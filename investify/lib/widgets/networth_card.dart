import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/app_text_bold.dart';
import '../widgets/app_text_medium.dart';

class NetWorthCard extends StatelessWidget {
  final String title;
  final double amount;

  const NetWorthCard({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
    return Container(
      height: 150,
      width: double.maxFinite,
      // margin: const EdgeInsets.only(right: 8),
      child: Card(
        elevation: 4,
        color: const Color(0xFF2B2B2B),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 24),
                child: AppTextBold(
                    text: 'N ${myFormat.format(amount)}', size: 28)),
            SizedBox(
              height: 16,
            ),
            Padding(
                padding: EdgeInsets.only(left: 24),
                child: AppTextMedium(text: title, size: 18)),
          ],
        ),
      ),
    );
  }
}
