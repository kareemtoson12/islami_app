import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:islami_app/controllers/nav_bar_controller.dart';

NavBarController barController = Get.put(NavBarController());
// ignore: non_constant_identifier_names
Widget NavBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.brown,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/icon_quran.png'),
        label: 'Quran',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/icon_hadeth.png'),
        label: 'hadeth',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/icon_sebha.png'),
        label: 'sebha',
      ),
    ],
    currentIndex: barController.selectedIndex.value,
    selectedItemColor: Colors.black,
    onTap: barController.onItemTapped,
  );
}
