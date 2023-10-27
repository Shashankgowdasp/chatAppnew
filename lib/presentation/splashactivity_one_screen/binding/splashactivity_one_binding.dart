import '../controller/splashactivity_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashactivityOneScreen.
///
/// This class ensures that the SplashactivityOneController is created when the
/// SplashactivityOneScreen is first loaded.
class SplashactivityOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashactivityOneController());
  }
}
