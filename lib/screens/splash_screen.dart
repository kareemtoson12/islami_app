import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islami_app/controllers/splash_controller.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  // ignore: unused_field
  final SplashController _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/qur2an_screen_logo@2x.png'),
        ),
      ),
    );
  }
}
