import 'package:flutter/material.dart';

import 'package:islami_app/constants/styels.dart';
import 'package:islami_app/controllers/hadith_controller.dart';

import 'package:islami_app/widgets/nav_bar_custom.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class HadithIndexPage extends StatelessWidget {
  HadithIndexPage({super.key});
  HadithController hadithController = Get.put(HadithController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavBar(),
      ),
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
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        'الاحاديث',
                        style: Styles.primaryTextStyle,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true, // To limit the height
                          physics:
                              const NeverScrollableScrollPhysics(), // Disable scrolling
                          itemCount: hadithController.hadiths.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  hadithController.hadiths[index],
                                  style: Styles.bodyTextStyle,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
