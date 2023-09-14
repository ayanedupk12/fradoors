
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:johnfra/Routes/AppRoutes.dart';
import 'package:johnfra/screens/HomeScreen/HomeScreenController.dart';

import '../../core/utils/AllStrings.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller=Get.put(HomeScreenContoller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenContoller>(
      builder: (__) {
        return SizedBox(
            height: Get.height,
            width: Get.width,
            child: SafeArea(child: controller.screens![__.screen]));
            // child: SafeArea(child: controller.screens![4]));
      }
    );
  }
}
