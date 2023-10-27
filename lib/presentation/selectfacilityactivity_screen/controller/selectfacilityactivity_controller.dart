import 'package:shashankgowdasp_s_application6/core/app_export.dart';
import 'package:shashankgowdasp_s_application6/presentation/selectfacilityactivity_screen/models/selectfacilityactivity_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectfacilityactivityScreen.
///
/// This class manages the state of the SelectfacilityactivityScreen, including the
/// current selectfacilityactivityModelObj
class SelectfacilityactivityController extends GetxController {
  TextEditingController selectdistrictController = TextEditingController();

  TextEditingController selectblockoneController = TextEditingController();

  TextEditingController selectpanchayatController = TextEditingController();

  TextEditingController selectvillageController = TextEditingController();

  Rx<SelectfacilityactivityModel> selectfacilityactivityModelObj =
      SelectfacilityactivityModel().obs;

  @override
  void onClose() {
    super.onClose();
    selectdistrictController.dispose();
    selectblockoneController.dispose();
    selectpanchayatController.dispose();
    selectvillageController.dispose();
  }
}
