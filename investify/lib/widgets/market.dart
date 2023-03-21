import 'package:flutter/material.dart';

import './market_card.dart';
import '../dummy_data.dart';
import 'investment_details.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  void onTap(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return InvestmentDetails();
    }));
  }

  @override
  Widget build(BuildContext context) {
    final loadedProperties = DUMMY_PROPERTIES;
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      appBar: AppBar(
          title: const Text("Market Place"),
          backgroundColor: Color.fromRGBO(0, 128, 128, 0.2)),
      body: ListView.builder(
        itemCount: loadedProperties.length,
        itemBuilder: (context, index) => MarketCard(
          onTap: () => onTap(context),
          title: loadedProperties[index].title,
          description: loadedProperties[index].description,
          imageUrl: loadedProperties[index].imageUrl,
          price: loadedProperties[index].price,
        ),
      ),
    );
  }
}
