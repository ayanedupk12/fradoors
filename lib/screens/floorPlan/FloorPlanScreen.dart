
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:johnfra/core/utils/paths.dart';
import '../ActionScreen/ActionScreenController.dart';

class FloorPlanScreen extends StatelessWidget {
  FloorPlanScreen({Key? key}) : super(key: key);
  final controller=Get.put(ActionScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
                height: Get.height/1.3,
                width: Get.width/1.3,
                child: Image.asset(imagePath+'floorPlan.png')),
          )
        ],
      ),
    );
  }
}
