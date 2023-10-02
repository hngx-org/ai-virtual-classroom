import 'package:get/get.dart';

import '../../models/onboarding_screen.dart';

/// A controller class for the OnBoardingScreen.
///
/// This class manages the state of the OnBoardingScreen, including the
/// current onBoardingModelObj
class OnBoardingController extends GetxController {
  Rx<OnBoardingModel> onBoardingModelObj = OnBoardingModel().obs;
}
