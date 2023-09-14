import 'package:get/get.dart';
import 'package:johnfra/screens/NavigationScreen/NavigationScreen.dart';
import 'package:johnfra/screens/NavigationScreen/NavigationScreenBinding.dart';
import '../screens/splashScreen/SplashScreen.dart';
import '../screens/splashScreen/splashScreenBinding.dart';
import 'AppRoutes.dart';

List<GetPage> pages = [
  GetPage(
    name: Routes.splashScreen,
    page: () => SplashScreen(),
    binding: SplashScreenBinding(),
  ),
  GetPage(
    name: Routes.navigationScreen,
    page: () => NavigationScreen(),
    binding: NavigationScreenBindings(),
  ),
  // GetPage(
  //   name: Routes.tripScreen,
  //   page: () => const TripScreen(),
  //   binding: TripBinding(),
  // ),
  // GetPage(
  //   name: Routes.usersScreen,
  //   page: () => const UsersScreen(),
  //   binding: UsersBinding(),
  // ),
];