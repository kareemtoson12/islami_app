import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islami_app/constants/styels.dart';

import '../controllers/quraan_contetnt_controller.dart';

class QuranaanContentScree extends StatelessWidget {
  QuranaanContentScree({super.key});
  final QuraanContetntController surahController =
      Get.find<QuraanContetntController>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
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
            Obx(() => Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    surahController.surahNam.value,
                    style: Styles.primaryTextStyle,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: height * 0.2),
              child: Center(
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Obx(() => Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListView.builder(
                                    shrinkWrap: true, // To limit the height
                                    physics:
                                        const NeverScrollableScrollPhysics(), // Disable scrolling
                                    itemCount:
                                        surahController.surahContent.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          surahController.surahContent[index],
                                          style: Styles.bodyTextStyle,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
