import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:investify/widgets/investment_details.dart';

import 'app_text_bold.dart';

class MarketCard extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  const MarketCard({
    super.key,
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.id,
  });

  void onTap(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(InvestmentDetails.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
    return InkWell(
      onTap: () => onTap(context),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 96,
              width: 96,
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
              clipBehavior: Clip.hardEdge,
            ),
            Container(
              height: 100,
              width: 250,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Color(0xFF2B2B2B),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTextBold(
                        text: title,
                        size: 16,
                      ),
                      AppTextBold(
                        text: 'N ${myFormat.format(price)}',
                        size: 16,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Vacant Land | 600 sqm ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
