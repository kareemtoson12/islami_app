import 'package:get/get.dart';
import 'dart:async';

import 'package:islami_app/screens/quraan_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 5),
      () => Get.to(MainScreen()),
    );
    super.onInit();
  }
}
