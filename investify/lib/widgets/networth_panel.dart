import 'package:flutter/material.dart';
import 'package:investify/widgets/networth_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NetworthPanel extends StatefulWidget {
  const NetworthPanel({super.key});

  @override
  State<NetworthPanel> createState() => _NetworthPanelState();
}

class _NetworthPanelState extends State<NetworthPanel> {
  final controller = PageController(viewportFraction: 1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const NetWorthCard(title: "Total Networth", amount: 2989899.74),
      const NetWorthCard(title: "Total Asset Value", amount: 1689845.23),
      const NetWorthCard(title: "Investify Wallet", amount: 1000675.51),
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 166,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (_, index) {
                return pages[index];
                // pages[index % pages.length]
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            child: SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.teal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
