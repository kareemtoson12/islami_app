import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islami_app/constants/styels.dart';
import 'package:islami_app/controllers/nav_bar_controller.dart';
import 'package:islami_app/controllers/quraan_controller.dart';
import 'package:islami_app/controllers/quraan_contetnt_controller.dart';
import 'package:islami_app/screens/quranaan_content_screen.dart';
import 'package:islami_app/widgets/nav_bar_custom.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final NavBarController barController = Get.put(NavBarController());
  final QuraanController quraanController = Get.put(QuraanController());
  final QuraanContetntController surahController =
      Get.put(QuraanContetntController());

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
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        'assets/images/qur2an_screen_logo@2x.png',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'إسم السورة',
                      textAlign: TextAlign.center,
                      style: Styles.captionTextStyle,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Obx(() {
                        return ListView.builder(
                          itemCount: quraanController.surah.length,
                          itemBuilder: (context, index) {
                            return TextButton(
                              onPressed: () {
                                surahController.surahNam.value =
                                    quraanController.surah[index];
                                surahController.readFile(
                                    index); // Ensure readFile is called
                                Get.to(QuranaanContentScree());
                              },
                              child: Text(
                                quraanController.surah[index],
                                style: Styles.bodyTextStyle,
                              ),
                            );
                          },
                        );
                      }),
                    ),
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
