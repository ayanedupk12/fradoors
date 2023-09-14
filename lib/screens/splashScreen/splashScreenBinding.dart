
import 'package:get/get.dart';
import 'package:johnfra/screens/splashScreen/spashScreenController.dart';
class SplashScreenBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => SplashScreenController());
  }
}