

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:johnfra/core/utils/AllStrings.dart';
import 'package:johnfra/screens/NavigationScreen/NavigationScreenController.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../core/utils/colors.dart';

class NavigationScreen extends StatelessWidget {
  NavigationScreen({Key? key}) : super(key: key);
  final controller=Get.put(NavigationScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationScreenController>(
      builder: (__) {
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: __.navigationIndex,
            onTap: (i) =>__.changeScreen(i),
            items: [
              // SalomonBottomBarItem(
              //   icon: Icon(Icons.pivot_table_chart,color: primaryColor,),
              //   title: Text(floorPlanTab),
              //   selectedColor: primaryColor,
              // ),
              SalomonBottomBarItem(
                icon: Icon(Icons.home,color: primaryColor,),
                title: Text(homeTab),
                selectedColor: primaryColor,
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.pending_actions,color: primaryColor,),
                title: Text(actionTab),
                selectedColor: primaryColor,
              ),
            ],
          ),
          body: __.navigationScreens[__.navigationIndex],
        );
      }
    );
  }
}
