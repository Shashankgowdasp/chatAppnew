import 'package:shashankgowdasp_s_application6/presentation/splashactivity_screen/splashactivity_screen.dart';
import 'package:shashankgowdasp_s_application6/presentation/splashactivity_screen/binding/splashactivity_binding.dart';
import 'package:shashankgowdasp_s_application6/presentation/splashactivity_one_screen/splashactivity_one_screen.dart';
import 'package:shashankgowdasp_s_application6/presentation/splashactivity_one_screen/binding/splashactivity_one_binding.dart';
import 'package:shashankgowdasp_s_application6/presentation/selectfacilityactivity_screen/selectfacilityactivity_screen.dart';
import 'package:shashankgowdasp_s_application6/presentation/selectfacilityactivity_screen/binding/selectfacilityactivity_binding.dart';
import 'package:shashankgowdasp_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:shashankgowdasp_s_application6/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashactivityScreen = '/splashactivity_screen';

  static const String splashactivityOneScreen = '/splashactivity_one_screen';

  static const String selectfacilityactivityScreen =
      '/selectfacilityactivity_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashactivityScreen,
      page: () => SplashactivityScreen(),
      bindings: [
        SplashactivityBinding(),
      ],
    ),
    GetPage(
      name: splashactivityOneScreen,
      page: () => SplashactivityOneScreen(),
      bindings: [
        SplashactivityOneBinding(),
      ],
    ),
    GetPage(
      name: selectfacilityactivityScreen,
      page: () => SelectfacilityactivityScreen(),
      bindings: [
        SelectfacilityactivityBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashactivityScreen(),
      bindings: [
        SplashactivityBinding(),
      ],
    )
  ];
}
