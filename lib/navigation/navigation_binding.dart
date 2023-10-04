import 'package:get/get.dart';

import 'navigation_controller.dart';

/// A binding class for the AppNavigationScreen.
///
/// This class ensures that the AppNavigationController is created when the
/// AppNavigationScreen is first loaded.
class AppNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigationController());
  }
}
