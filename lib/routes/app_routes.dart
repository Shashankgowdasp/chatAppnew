import 'package:flutter/material.dart';
import 'package:shashankgowdasp_s_application6/presentation/splashactivity_screen/splashactivity_screen.dart';
import 'package:shashankgowdasp_s_application6/presentation/splashactivity_one_screen/splashactivity_one_screen.dart';
import 'package:shashankgowdasp_s_application6/presentation/selectfacilityactivity_screen/selectfacilityactivity_screen.dart';
import 'package:shashankgowdasp_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashactivityScreen = '/splashactivity_screen';

  static const String splashactivityOneScreen = '/splashactivity_one_screen';

  static const String selectfacilityactivityScreen =
      '/selectfacilityactivity_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashactivityScreen: (context) => SplashactivityScreen(),
    splashactivityOneScreen: (context) => SplashactivityOneScreen(),
    selectfacilityactivityScreen: (context) => SelectfacilityactivityScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
