import 'package:ai_virtual_classroom/controller/auth_controller.dart';
import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/models/splash_model.dart';

import 'package:ai_virtual_classroom/screens/home.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.find<AuthController>().isLoggedIn.value
          ? Get.offAll(() => HomePage())
          : Get.offNamed(AppRoutes.onBoardingScreen);
    });
  }
}
