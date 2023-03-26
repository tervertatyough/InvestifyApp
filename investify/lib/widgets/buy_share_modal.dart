import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:investify/widgets/app_text_medium.dart';
import 'package:investify/widgets/authorization.dart';
import 'package:investify/widgets/buy_success_screen.dart';

import 'app_button.dart';
import 'app_text_bold.dart';

class BuyShareModal extends StatefulWidget {
  const BuyShareModal({super.key});

  @override
  State<BuyShareModal> createState() => _BuyShareModalState();
}

class _BuyShareModalState extends State<BuyShareModal> {
  int count = 1;
  double price = 50000;

  void buy(context) {
    Navigator.of(context).pushReplacementNamed(BuySuccessScreen.routeName,
        arguments: {"count": count});
  }

  @override
  Widget build(BuildContext context) {
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF2B2B2B),
      ),
      height: 240,
      child: Column(
        children: [
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFF202020),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTextMedium(
                    text: "How many shares do you want to buy?", size: 14),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.highlight_remove_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: count <= 1
                              ? const Color.fromRGBO(0, 128, 128, 0.1)
                              : const Color.fromRGBO(0, 128, 128, 1),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: IconButton(
                        onPressed: count > 1
                            ? () {
                                setState(() {
                                  count = count - 1;
                                });
                              }
                            : null,
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    AppTextBold(text: '$count', size: 16),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 128, 128, 1),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              count = count + 1;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
                AppButton(
                  title: "Buy Share",
                  // onPress: () => buy(context),
                  onPress: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const Authorization();
                      },
                    );
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextBold(text: 'N ${myFormat.format(price * count)}', size: 24)
        ],
      ),
    );
  }
}
