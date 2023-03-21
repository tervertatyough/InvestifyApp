import 'package:flutter/material.dart';

import './widgets/transaction_details.dart';
import './widgets/buy_success_screen.dart';
import './widgets/account_settings.dart';
import './widgets/contact_us.dart';
import './widgets/my_asset.dart';
import './widgets/next_of_kin_settings.dart';
import './widgets/notifications.dart';
import './widgets/password_settings.dart';
import './widgets/payment_settings.dart';
import './widgets/home.dart';
import './widgets/invest.dart';
import './widgets/market.dart';
import './widgets/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: "Lato",
        ),
        home: const MyHomePage(),
        routes: {
          Notifications.routeName: (ctx) => const Notifications(),
          MyAsset.routeName: (ctx) => const MyAsset(),
          AccountSettings.routeName: (ctx) => const AccountSettings(),
          PaymentSettings.routeName: (ctx) => const PaymentSettings(),
          PasswordSettings.routeName: (ctx) => const PasswordSettings(),
          NextOfKinSettings.routeName: (ctx) => const NextOfKinSettings(),
          ContactUs.routeName: (ctx) => const ContactUs(),
          BuySuccessScreen.routeName: (ctx) => const BuySuccessScreen(),
          TransactionDetails.routeName: (ctx) => const TransactionDetails(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final List<ActionButton> _actionbuttons = [

  // ];

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    Home(),
    Invest(),
    Market(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF2B2B2B),
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 16.0,
        unselectedFontSize: 16.0,
        iconSize: 28.0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: "Invest",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Market",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Account",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
