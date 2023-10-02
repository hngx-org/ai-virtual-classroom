import 'package:get/get.dart';

import 'onboarding_screen_controller.dart';

/// A binding class for the OnBoardingScreen.
///
/// This class ensures that the OnBoardingController is created when the
/// OnBoardingScreen is first loaded.
class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingController());
  }
}
