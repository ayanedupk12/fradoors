

import 'package:get/get.dart';
import 'package:johnfra/screens/HomeScreen/HomeScreen.dart';

import '../ActionScreen/ActionScreen.dart';
import '../floorPlan/FloorPlanScreen.dart';

class NavigationScreenController extends GetxController{

  int navigationIndex=0;
  List navigationScreens=[
    HomeScreen(),
    ActionScreen()
  ];
  changeScreen(i){
        navigationIndex = i;
        update();
  }
}