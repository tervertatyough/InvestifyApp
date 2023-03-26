import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:investify/widgets/app_text_medium.dart';
import 'package:investify/widgets/investment_details.dart';

import 'app_text_bold.dart';

class InvestmentCard extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  const InvestmentCard({
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
              height: 160,
              width: 130,
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 160,
              width: 220,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Color(0xFF2B2B2B),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextBold(
                    text: title,
                    size: 16,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
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
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Available units: ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        " 1000",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.teal),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      AppTextBold(
                        text: 'N ${myFormat.format(price)}',
                        size: 18,
                        color: Colors.teal,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const AppTextMedium(text: "per unit", size: 14)
                    ],
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
