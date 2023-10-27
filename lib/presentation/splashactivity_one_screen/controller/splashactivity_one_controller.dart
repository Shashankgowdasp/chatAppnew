import 'package:shashankgowdasp_s_application6/core/app_export.dart';
import 'package:shashankgowdasp_s_application6/presentation/splashactivity_one_screen/models/splashactivity_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SplashactivityOneScreen.
///
/// This class manages the state of the SplashactivityOneScreen, including the
/// current splashactivityOneModelObj
class SplashactivityOneController extends GetxController {
  TextEditingController mobileprefixController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController selectrolelabelController = TextEditingController();

  Rx<SplashactivityOneModel> splashactivityOneModelObj =
      SplashactivityOneModel().obs;

  Rx<bool> tablost = false.obs;

  @override
  void onClose() {
    super.onClose();
    mobileprefixController.dispose();
    passwordController.dispose();
    selectrolelabelController.dispose();
  }
}
