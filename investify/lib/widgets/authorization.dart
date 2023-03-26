import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Authorization extends StatefulWidget {
  const Authorization({super.key});

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: const BoxDecoration(color: Color(0xFF2B2B2B)),
      padding: EdgeInsets.only(
          right: 16,
          left: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        obscureText: true,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          print(value);
          setState(() {
            currentText = value;
          });
        },
      ),
    );
  }
}
