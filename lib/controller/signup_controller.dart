import 'dart:developer';

import 'package:ai_virtual_classroom/core/extensions/validators.dart';
import 'package:ai_virtual_classroom/core/global/global.dart';
import 'package:ai_virtual_classroom/core/utils/progress_dialog_utils.dart';
import 'package:flutter/material.dart';

import '../core/app_export.dart';

class SignUpContrroller extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final confirmController = TextEditingController();

  RxBool obscurePassword = true.obs;
  RxBool obscureConfirmPassword = true.obs;

  void validate() {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty ||
        nameController.text.trim().trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      errorMethod('Email or Password can not be empty');
    } else if (!emailController.text.emailValidation) {
      errorMethod('Please enter a vaild email');
    } else if (!passwordController.text.passwordValidation) {
      errorMethod(
          "Please enter a strong password and must contain A-Z, a-z, 0-9 and special character");
    } else if (passwordController.text.trim() !=
        confirmController.text.trim()) {
      errorMethod('password and confirm is not the same');
    } else {
      signUp();
    }
  }

  Future<void> signUp() async {
    print("Here");
    ProgressDialogUtils.showProgressDialog();
    try {
      final name = nameController.text.trim();
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      final result = await authRepository.signUp(name, email, password);
      ProgressDialogUtils.hideProgressDialog();
      if (result != null) {
        // final data = result.body;
        print('Success Result: $result');
        successMethod("Account Created Successfully");
        nameController.clear();
        emailController.clear();
        passwordController.clear();
      } else {
        errorMethod("An Error Occurred");
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      log("Error : $error");
      errorMethod("Internal Error Occured");
    }
    // try {
    //   dynamic responses = await ApiClient().postRegister(
    //     requestData: {
    //       "email": emailController.text.trim(),
    //       "name": nameController.text.trim(),
    //       "password": passwordController.text.trim(),
    //       "confirm_password": confirmController.text.trim(),
    //     },
    //   );
    //   if (responses['message'] == "User Created Succesfully") {
    //     successMethod('User Created Succesfully');
    //     // nameController.clear();
    //     // emailController.clear();
    //     // passwordController.clear();
    //     // confirmController.clear();
    //     // Get.offAll();
    //   } else {
    //     errorMethod('An Error Occured');
    //   }
    // } catch (error) {
    //   print("Error $error");
    // }
  }
}
