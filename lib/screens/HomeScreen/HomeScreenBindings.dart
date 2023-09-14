
import 'package:get/get.dart';
import 'package:johnfra/screens/splashScreen/spashScreenController.dart';

import 'HomeScreenController.dart';
class HomeScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenContoller());
  }
}