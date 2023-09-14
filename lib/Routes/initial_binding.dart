

import 'package:get/get.dart';

import '../core/controller/app_controller.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AppController());
  }

}
