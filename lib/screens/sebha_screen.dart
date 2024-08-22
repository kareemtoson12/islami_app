import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islami_app/constants/styels.dart';

import 'package:islami_app/screens/azkar_elmasaa.dart';
import 'package:islami_app/screens/azkar_elsabah.dart';

import 'package:islami_app/widgets/nav_bar_custom.dart';

class SebhaCounter extends StatelessWidget {
  SebhaCounter({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: NavBar(), // Removed unnecessary Obx
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/default_bg.png',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.2),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      categoryCustom('اذكار الصباح', AzkarElsabah()),
                      categoryCustom('اذكار المساء', AzkarElmasaa()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryCustom(String name, Widget route) {
    return GestureDetector(
      onTap: () {
        Get.to(route);
      },
      child: Container(
        margin:
            EdgeInsets.symmetric(vertical: 10.0), // Added margin for spacing
        padding: EdgeInsets.all(16.0), // Added padding for better look
        width: double.infinity, // Make the container full width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            // Added a box shadow for better UI
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            name,
            style: Styles.bodyTextStyle,
          ),
        ),
      ),
    );
  }
}
