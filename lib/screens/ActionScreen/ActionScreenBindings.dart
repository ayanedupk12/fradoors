
import 'package:get/get.dart';
import 'package:johnfra/screens/splashScreen/spashScreenController.dart';

import 'ActionScreenController.dart';
class ActionScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ActionScreenController());
  }
}