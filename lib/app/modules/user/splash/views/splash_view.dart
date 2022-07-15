import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {


 @override
  final SplashController controller = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Text(
          'immiNex',
          style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
