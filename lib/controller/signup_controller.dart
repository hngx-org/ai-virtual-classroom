import 'package:ai_virtual_classroom/core/app_exports.dart';
import 'package:ai_virtual_classroom/core/extensions/validators.dart';
import 'package:ai_virtual_classroom/services/api_client.dart';
import 'package:flutter/material.dart';

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
      errorMethod("Please enter a strong password");
    } else if (passwordController.text.trim() !=
        confirmController.text.trim()) {
      errorMethod('password and confirm is not the same');
    } else {
      signUp();
    }
  }

  Future<void> signUp() async {
    try {
      dynamic responses = await ApiClient().postRegister(
        requestData: {
          "email": emailController.text.trim(),
          "name": nameController.text.trim(),
          "password": passwordController.text.trim(),
          "confirm_password": confirmController.text.trim(),
        },
      );
      if (responses['message'] == "User Created Succesfully") {
        successMethod('User Created Succesfully');
        // nameController.clear();
        // emailController.clear();
        // passwordController.clear();
        // confirmController.clear();
        // Get.offAll();
      } else {
        errorMethod('An Error Occured');
      }
    } catch (error) {
      print("Error $error");
    }
  }
}
