import 'package:get/get.dart';


class AppController extends GetxController {
  final loading = false.obs;
  final success = true.obs;


  @override
  void onInit() {
    loading.value = false;
    super.onInit();
  }
}