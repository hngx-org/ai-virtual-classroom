import 'package:ai_virtual_classroom/controller/auth_controller.dart';
import 'package:ai_virtual_classroom/controller/logout_controller.dart';
import 'package:flutter/material.dart';
import 'package:hng_authentication/authentication.dart';

import '../app_export.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync(() async => AuthController());
    await Get.putAsync(() async => LogOut());
  }
}

final authRepository = Authentication();
