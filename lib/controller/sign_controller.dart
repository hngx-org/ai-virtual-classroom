import 'dart:convert';

import 'package:ai_virtual_classroom/controller/auth_controller.dart';
import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/core/extensions/validators.dart';
import 'package:ai_virtual_classroom/core/global/global.dart';
import 'package:ai_virtual_classroom/core/utils/progress_dialog_utils.dart';

import 'package:ai_virtual_classroom/screens/home.dart';
import 'package:flutter/material.dart';

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
    } else if (!passwordController.text.passwordValidation) {
      errorMethod("Password or email incorrect");
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
        // String ns = await authCrtl.getName();

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
}
