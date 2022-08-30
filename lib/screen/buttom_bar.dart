import 'package:e_commer_app/screen/dicount_page.dart';
import 'package:e_commer_app/screen/home_page.dart';
import 'package:e_commer_app/screen/mapPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'faverit_page.dart';
import 'notification_page.dart';

class ButtomNavigationBar extends StatefulWidget {
  const ButtomNavigationBar({Key? key}) : super(key: key);

  @override
  State<ButtomNavigationBar> createState() => _ButtomNavigationBarState();
}

class _ButtomNavigationBarState extends State<ButtomNavigationBar> {
  int selectedIndex = 0;
  void _navigationbar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    DicountPage(),
    MapPage(),
    FaveritPage(),
    NotificationPage(),

    // NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[selectedIndex],
        bottomNavigationBar: SizedBox(
          // height: ,
          child: BottomNavigationBar(
            elevation: 10,

            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            // backgroundColor: Colors.green[100],
            selectedItemColor: Colors.blue,
            currentIndex: selectedIndex,

            onTap: _navigationbar,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/b_home.png'),
                    size: 30,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/b_dis.png'),
                    size: 30,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/b_map.png'),
                    size: 35,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/b_fav.png'),
                    size: 30,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/b_noti.png'),
                    size: 30,
                  ),
                  label: 'Home'),
            ],
          ),
        ));
  }
}
