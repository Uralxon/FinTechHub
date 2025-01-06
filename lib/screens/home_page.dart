import 'package:flutter/material.dart';
import 'package:flutter_application_3/appcolor.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.textbackcolor,
      extendBodyBehindAppBar: false,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(
              color: Colors.black,
              fontFamily: "Concert",
              fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          fixedColor: Appcolor.greencolor,
          backgroundColor: Appcolor.textbackcolor,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Appcolor.textbackcolor,
              activeIcon: Icon(IconlyBroken.home, color: Appcolor.greencolor),
              icon: Icon(
                IconlyBroken.home,
                color: Colors.black,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                activeIcon:
                    Icon(IconlyBroken.document, color: Appcolor.greencolor),
                icon: Icon(
                  IconlyBroken.document,
                  color: Colors.black,
                ),
                label: "My Coures"),
            BottomNavigationBarItem(
                activeIcon:
                    Icon(IconlyBroken.wallet, color: Appcolor.greencolor),
                icon: Icon(
                  IconlyBroken.wallet,
                  color: Colors.black,
                ),
                label: "Transaction"),
            BottomNavigationBarItem(
                activeIcon:
                    Icon(IconlyBroken.profile, color: Appcolor.greencolor),
                icon: Icon(
                  IconlyBroken.profile,
                  color: Colors.black,
                ),
                label: "Profile")
          ]),
    );
  }
}
