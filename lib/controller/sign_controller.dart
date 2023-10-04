import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:ai_virtual_classroom/controller/auth_controller.dart';
import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/core/extensions/validators.dart';
import 'package:ai_virtual_classroom/core/global/global.dart';
import 'package:ai_virtual_classroom/core/utils/progress_dialog_utils.dart';
import 'package:ai_virtual_classroom/screens/home.dart';

//import 'package:hng_authentication/authentication.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool obscurePassword = true.obs;
  RxBool isLoggedin = false.obs;
  RxString unitLeft = "".obs;

  final authCrtl = Get.find<AuthController>();

  validate() {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      errorMethod('Email or Password can not be empty');
    } else if (!emailController.text.emailValidation) {
      errorMethod('Please enter a vaild email');
      // }
      // else if (!passwordController.text.passwordValidation) {
      //   errorMethod("Password or email incorrect");
    } else {
      signIn();
    }
  }

  Future<void> signIn() async {
    print("Here");
    ProgressDialogUtils.showProgressDialog();
    try {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      final result = await authRepository.signIn(email, password);
      ProgressDialogUtils.hideProgressDialog();
      if (result != null) {
        final data = result;
        final unitLeft = result.credits;

        print(unitLeft);
        print('Success Result: ${result.cookie}');
        print('Success Result Email: ${data.email}');
        print('Success Result Email: ${data.credits}');
        isLoggedin.value = true;
        await authCrtl.saveName('${result.name}');
        await authCrtl.saveEmail('${result.email}');
        await authCrtl.saveCookie('${result.cookie}');
        // extractCookieValues('${result.cookie}');

        print(isLoggedin.value);
        successMethod("User Logged In Successfully");
        Get.offAll(HomePage());
        emailController.clear();
        passwordController.clear();
      } else {
        errorMethod("An Error Occurred");
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      print("Error: $error");
      errorMethod("Error Occurred");
    }
  }

  // Future<void> extractCookieValues(String cookieString) async {
  //   // Define regular expressions to match the desired cookie attributes
  //   RegExp sessionIdRegex = RegExp(r'session=([^;]+)');
  //   RegExp expiresRegex = RegExp(r'Expires=([^;]+)');
  //   RegExp pathRegex = RegExp(r'Path=([^;]+)');
  //   RegExp sameSiteRegex = RegExp(r'SameSite=([^;]+)');

  //   // Use regular expressions to extract values
  //   String sessionId = sessionIdRegex.firstMatch(cookieString)?.group(0) ?? '';
  //   String expires = expiresRegex.firstMatch(cookieString)?.group(1) ?? '';
  //   String path = pathRegex.firstMatch(cookieString)?.group(1) ?? '';
  //   String sameSite = sameSiteRegex.firstMatch(cookieString)?.group(1) ?? '';
  //   await authCrtl.saveCookie(sessionId);
  //   // Now you have the extracted values
  //   print("Session ID: $sessionId");
  //   print("Expires: $expires");
  //   print("Path: $path");
  //   print("SameSite: $sameSite");
  // }
}
