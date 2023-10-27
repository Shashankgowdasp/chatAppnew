import '../controller/splashactivity_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashactivityScreen.
///
/// This class ensures that the SplashactivityController is created when the
/// SplashactivityScreen is first loaded.
class SplashactivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashactivityController());
  }
}
