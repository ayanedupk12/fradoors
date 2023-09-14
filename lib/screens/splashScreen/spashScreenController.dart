

import 'dart:async';
import 'package:get/get.dart';

import '../../Routes/AppRoutes.dart';

class SplashScreenController extends GetxController{
  @override
  void onInit() {
    moveScreen();
    super.onInit();
  }
  moveScreen(){
    Timer(
        Duration(seconds: 3),
            ()async{
              Get.offAndToNamed(Routes.navigationScreen);
              // Get.offAndToNamed(Routes.welcomeScreen);
              // bool result = await InternetConnectionChecker().hasConnection;
              // if(result){
              //   if(_auth.currentUser!=null){
              //     if (_auth.currentUser!.emailVerified) {
              //       final user =firebaseFireStore.collection('Users').doc(_auth.currentUser!.uid);
              //       user.get().then((value){
              //         List<dynamic> balanceJson = value['balance'];
              //         List<BalanceEntry> balanceF = balanceJson.map((entry) => BalanceEntry.fromJson(entry)).toList();
              //         globalController.userInformation=UserInformation(
              //             userId: value['userId'],
              //             userType: value['userType'],
              //             name: value['name'],
              //             phone: value['phone'],
              //             balance: balanceF,
              //             idFrontSide: value['idFrontSide'],
              //             email: value['email'],
              //             idBackSide: value['idBackSide'],
              //             highest: value['highest'].toDouble(),
              //             profit: value['profit'].toDouble(), profile: value['profile']??''
              //         );
              //         Get.toNamed(Routes.homeScreen);
              //       });
              //     }
              //     else {
              //       // If the user's email is not verified, send a verification email
              //       await _auth.currentUser!.sendEmailVerification();
              //       Get.snackbar('FinancialFusion', 'Please check your email to verify your account and login again');
              //       Get.offAndToNamed(Routes.welcomeScreen);
              //       // return 'Please check your email to verify your account';
              //     }
              //   }else{
              //     Get.offAndToNamed(Routes.welcomeScreen);
              //   }
              // }else{
              //   Get.offAndToNamed(Routes.welcomeScreen);
              // }


        }
    );
  }
}