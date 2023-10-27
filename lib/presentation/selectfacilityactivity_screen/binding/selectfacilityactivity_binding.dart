import '../controller/selectfacilityactivity_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectfacilityactivityScreen.
///
/// This class ensures that the SelectfacilityactivityController is created when the
/// SelectfacilityactivityScreen is first loaded.
class SelectfacilityactivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectfacilityactivityController());
  }
}
