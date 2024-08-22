import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islami_app/constants/styels.dart';
import 'package:islami_app/screens/hadith_screen.dart';
import 'package:islami_app/screens/quraan_screen.dart';
import 'package:islami_app/screens/sebha_screen.dart';

class NavBarController extends GetxController {
  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 1: Hadteh',
      style: Styles.captionTextStyle,
    ),
    Text(
      'Index 2: sebha',
      style: Styles.captionTextStyle,
    ),
  ];
  RxInt selectedIndex = 0.obs;
  void onItemTapped(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        Get.offAll(MainScreen());

      case 1:
        Get.offAll(HadithIndexPage());
        break;
      case 2:
        Get.offAll(SebhaCounter());
        break;
      default:
        break;
    }
  }
}
