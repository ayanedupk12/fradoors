import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Routes/AppPages.dart';
import 'Routes/AppRoutes.dart';
import 'Routes/initial_binding.dart';
import 'core/utils/themeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      getPages: pages,
      initialRoute: Routes.splashScreen,
      initialBinding: Binding(),
    );
  }
}

