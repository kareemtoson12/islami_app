import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islami_app/constants/styels.dart';
import 'package:islami_app/controllers/azkar_elsabah_controller.dart';
import 'package:islami_app/screens/quraan_screen.dart';

class AzkarElsabah extends StatelessWidget {
  const AzkarElsabah({super.key});

  @override
  Widget build(BuildContext context) {
    AzkarElsabahController controller = Get.put(AzkarElsabahController());
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(MainScreen());
          },
          icon: const Icon(Icons.arrow_back),
        ),
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
            Padding(
              padding: EdgeInsets.only(top: height * 0.2),
              child: Center(child: SingleChildScrollView(child: Obx(
                () {
                  return Column(
                    children: [
                      Container(
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
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Text(
                              ' ايه الكرسي',
                              style: Styles.primaryTextStyle,
                            ),
                            Text(
                              controller.ayetElkorsy.value,
                              style: Styles.bodyTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
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
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Text(
                              ' سورة الإخلاص ',
                              style: Styles.primaryTextStyle,
                            ),
                            const Text(
                              'والمعوذتين',
                              style: Styles.captionTextStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                controller.elma3ozaten[0],
                                style: Styles.bodyTextStyle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                controller.elma3ozaten[1],
                                style: Styles.bodyTextStyle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                controller.elma3ozaten[2],
                                style: Styles.bodyTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
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
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.bismillah.value,
                                style: Styles.bodyTextStyle,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller
                                    .decrement(controller.bismillahCounter);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
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
                                        controller.bismillahCounter.string)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
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
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.radetbEllah.value,
                                style: Styles.bodyTextStyle,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller
                                    .decrement(controller.radetbEllahCounter);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
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
                                        controller.radetbEllahCounter.string)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
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
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.astaghfirullah.value,
                                style: Styles.bodyTextStyle,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.decrement(
                                    controller.astaghfirullahCounter);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
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
                                    child: Text(controller
                                        .astaghfirullahCounter.string)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ))),
            ),
          ],
        ),
      ),
    );
  }
}
