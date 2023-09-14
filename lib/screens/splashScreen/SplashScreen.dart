
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:johnfra/screens/splashScreen/spashScreenController.dart';

import '../../core/utils/paths.dart';
class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
final controller=Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.4),
      body: Center(
        child: SizedBox(
            height: Get.height/2,
            width: Get.width/2,
            child: Image.asset(imagePath+'logo.png')
        ),
      ),
    );
  }
}
