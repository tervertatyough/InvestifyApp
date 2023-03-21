import 'package:flutter/material.dart';
import 'package:investify/widgets/transaction_details.dart';

import '../dummy_data.dart';
import 'networth_panel.dart';
import 'deposit.dart';
import 'sell.dart';
import 'send.dart';
import 'transactions.dart';
import 'withdraw.dart';
import 'app_text_bold.dart';
import 'app_text_medium.dart';
import 'home_action.dart';
import 'transaction_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _onTap(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Deposit();
    }));
  }

  void _withdraw(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Withdraw();
    }));
  }

  void _send(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Send();
    }));
  }

  void _sell(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Sell();
    }));
  }

  void _transactions(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Transactions();
    }));
  }

  void _transactionDetails(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(TransactionDetails.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final transactions = DUMMY_TRANSACTIONS;
    return SafeArea(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AppTextMedium(text: "Hello Terver,", size: 16),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        "Where would you put your money to work today?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFC4C4C4)),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Color(0xFF2B2B2B),
                  ),
                  child: const AppTextBold(
                    text: "T",
                    size: 18,
                  ),
                )
              ],
            ),
          ),
          const NetworthPanel(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeActionButton(
                  title: "Deposit",
                  iconData: Icons.wallet,
                  onTap: () => _onTap(context),
                ),
                HomeActionButton(
                  iconData: Icons.save_alt_rounded,
                  title: "Withdraw",
                  onTap: () => _withdraw(context),
                ),
                HomeActionButton(
                  iconData: Icons.send,
                  title: "Send",
                  onTap: () => _send(context),
                ),
                HomeActionButton(
                  iconData: Icons.shopping_cart,
                  title: "Sell",
                  onTap: () => _sell(context),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Flexible(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 128, 128, 0.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppTextBold(text: "Transactions", size: 16),
                      TextButton(
                        onPressed: () => _transactions(context),
                        child: const Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      )
                    ],
                  ),
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
                        onTap: () => _transactionDetails(context),
                      ),
                      separatorBuilder: (context, index) => const Divider(
                        thickness: 1,
                        color: Color.fromRGBO(196, 196, 196, 0.3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
