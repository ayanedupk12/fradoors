
import 'package:get/get.dart';
import 'package:johnfra/screens/splashScreen/spashScreenController.dart';

import 'NavigationScreen.dart';
class NavigationScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationScreen());
  }
}