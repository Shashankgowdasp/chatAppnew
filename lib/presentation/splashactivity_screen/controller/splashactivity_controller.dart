import 'package:shashankgowdasp_s_application6/core/app_export.dart';
import 'package:shashankgowdasp_s_application6/presentation/splashactivity_screen/models/splashactivity_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SplashactivityScreen.
///
/// This class manages the state of the SplashactivityScreen, including the
/// current splashactivityModelObj
class SplashactivityController extends GetxController {
  TextEditingController phonenumberoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController selectroleoneController = TextEditingController();

  Rx<SplashactivityModel> splashactivityModelObj = SplashactivityModel().obs;

  @override
  void onClose() {
    super.onClose();
    phonenumberoneController.dispose();
    passwordController.dispose();
    selectroleoneController.dispose();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.splashactivityOneScreen,
      );
    });
  }
}
