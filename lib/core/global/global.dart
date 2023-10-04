import 'package:ai_virtual_classroom/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:hng_authentication/authentication.dart';

import '../app_export.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync(() async => AuthController());
    //   await Get.putAsync(() async => SignInController());
    //   final AuthController authController = Get.find();
    //   await authController.checkLoginStatus();
    //   // Create an instance of Connectivity
    //   final connectivity = Connectivity();

    //   // Register NetworkInfo with the Connectivity instance
    //   final networkInfo = NetworkInfo(connectivity);
    //   Get.put(networkInfo);
    //   // sharedPreferences = await SharedPreferences.getInstance();
  }
}

final authRepository = Authentication();
