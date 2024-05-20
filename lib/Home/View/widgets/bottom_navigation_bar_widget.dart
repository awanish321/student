import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int myCurrentIndex = 0;
  late List<Widget> pages;

  _BottomNavBarState() {
    pages = [
       const HomeScreen(),
      Container(color: Colors.red,),
      Container(color: Colors.yellow,),
      Container(color: Colors.green,),
      Container(color: Colors.white,),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          currentIndex: myCurrentIndex,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.monitor),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.add_circle),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.sms),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.bag_2),
              label: "",
            ),
          ],
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
