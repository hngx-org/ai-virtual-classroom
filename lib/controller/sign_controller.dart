import 'dart:convert';

import 'package:ai_virtual_classroom/core/app_exports.dart';
import 'package:ai_virtual_classroom/core/extensions/validators.dart';
import 'package:ai_virtual_classroom/services/api_client.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool obscurePassword = true.obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> signIn() async {
    print("Here");
    try {
      final requestData = {
        'email': emailController.text.trim(),
        'password': passwordController.text.trim(),
      };
      dynamic resp = await ApiClient().postLogin(requestData: requestData);
      // print(resp['Error']);
      if (resp['message'] == 'success') {
        print('Success Result: $resp');
        emailController.clear();
        passwordController.clear();
      } else {
        switch (resp['error']) {
          case "Resource not Found":
            print('Bad Request: Invalid input data');
            // Add code to handle this specific error here
            break;
          case 401:
            print('Unauthorized: You do not have enough credentials');
            // Add code to handle this specific error here
            break;
          case 405:
            print(
                'Method Not Allowed: The HTTP method used is not allowed for this endpoint');
            // Add code to handle this specific error here
            break;
          case 413:
            print('Payload Too Long: The request body is too long');
            // Add code to handle this specific error here
            break;
          case 422:
            print(
                'Unprocessable Entity: The server cannot process the request due to invalid data');
            // Add code to handle this specific error here
            break;
          case 429:
            print(
                'Too Many Requests: Rate limit exceeded. Please try again later.');
            // Add code to handle this specific error here
            break;
          case 500:
            print(
                "Internal Server Error: It's not you, it's us. We encountered an internal server error.");
            // Add code to handle this specific error here
            break;
          default:
            print('Unknown error occurred');
          // Add code to handle any other errors or a default case here
        }
      }
    } catch (e) {
      print('Error during login: $e');

      errorMethod(e.toString());
    }
  }
}
