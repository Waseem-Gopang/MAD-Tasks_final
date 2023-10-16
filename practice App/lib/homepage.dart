import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practiceapp/pages/call.dart';
import 'package:practiceapp/pages/home.dart';
import 'package:practiceapp/pages/accounts.dart';
import 'package:practiceapp/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  void bottomNavigationIndex(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> pages = [
    const Home(),
    const Message(),
    const Call(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: pages[_selectedindex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue.shade500,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.cyan,
        animationDuration: const Duration(milliseconds: 400),
        onTap: bottomNavigationIndex,
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.account_balance_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.call,
            color: Colors.white,
          ),
          Icon(
            Icons.person_pin,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
