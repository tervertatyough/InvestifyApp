import 'package:flutter/material.dart';
import 'package:investify/dummy_data.dart';

import 'package:investify/widgets/investment_card.dart';
import 'package:investify/widgets/investment_details.dart';

const List<String> list = <String>[
  'All Projects',
  'Residential Project',
  'Commercial Project',
  'Vacant Land Project',
];

class Invest extends StatefulWidget {
  const Invest({super.key});

  @override
  State<Invest> createState() => _InvestState();
}

class _InvestState extends State<Invest> {
  String dropDownValue = list.first;

  void onTap(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return InvestmentDetails();
    }));
  }

  void dropDownCallBack(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        dropDownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final loadedProperties = DUMMY_PROPERTIES;
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      appBar: AppBar(
          title: const Text("Investments"),
          backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2)),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DropdownButton(
                value: dropDownValue,
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: dropDownCallBack,
                style: const TextStyle(color: Colors.white),
                dropdownColor: const Color(0xFF2B2B2B),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Flexible(
                child: ListView.builder(
              itemCount: loadedProperties.length,
              itemBuilder: (context, index) => InvestmentCard(
                onTap: () => onTap(context),
                title: loadedProperties[index].title,
                description: loadedProperties[index].description,
                imageUrl: loadedProperties[index].imageUrl,
                price: loadedProperties[index].price,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
