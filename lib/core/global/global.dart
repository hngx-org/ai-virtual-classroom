import 'package:ai_virtual_classroom/core/app_exports.dart';
import 'package:flutter/material.dart';
import 'package:hng_authentication/authentication.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Create an instance of Connectivity
    final connectivity = Connectivity();

    // Register NetworkInfo with the Connectivity instance
    final networkInfo = NetworkInfo(connectivity);
    Get.put(networkInfo);
    // sharedPreferences = await SharedPreferences.getInstance();
  }
}

final authRepository = Authentication();
