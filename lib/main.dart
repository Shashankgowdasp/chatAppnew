import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:shashankgowdasp_s_application6/theme/theme_helper.dart';
import 'package:shashankgowdasp_s_application6/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'shashankgowdasp_s_application6',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashactivityScreen,
      routes: AppRoutes.routes,
    );
  }
}
