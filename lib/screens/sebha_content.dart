import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SebhaContent extends StatelessWidget {
  const SebhaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: SingleChildScrollView(child: Obx(
        () {
          return Column(
            children: [Text('ايه')],
          );
        },
      ))),
    );
  }
}
