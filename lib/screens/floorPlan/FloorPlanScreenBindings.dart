
import 'package:get/get.dart';
import 'package:johnfra/screens/splashScreen/spashScreenController.dart';

import 'FloorPlanScreenController.dart';
class FloorPlanScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FloorPlanScreenContoller());
  }
}