import 'package:ai_virtual_classroom/core/extensions/validators.dart';
import 'package:ai_virtual_classroom/core/utils/progress_dialog_utils.dart';
import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:ai_virtual_classroom/services/api_client.dart';
import 'package:flutter/material.dart';

import '../core/app_export.dart';
import '../screens/submit_success/submit_success_screen.dart';

class HomeController extends GetxController {
  final topicController = TextEditingController();
  final essayController = TextEditingController();

  Future<void> submitEassy() async {
    var header = {
      'Cookie': await authController.getCookie(),
    };

    print("Here Essay");
    ProgressDialogUtils.showProgressDialog();
    try {
      final resp = {
        "history": [
          "user: Hello!",
          "AI: Hi! How can I help you today?",
          "user: I want you to grade essay for my student, can you do that?.",
          "AI: Yes, I can."
        ],
        'user_input':
            "Grade this essay ${essayController.text.trim()}, give me feedback and generate a presonalized recommendation."
      };
      dynamic result = ApiClient().chat(
        requestData: resp,
        headers: header,
      );
      ProgressDialogUtils.hideProgressDialog();
      // ProgressDialogUtils.hideProgressDialog();
      if (result != null) {
        print(header);
        print('Success Result: ${result}');
        // print('Success Result Name: $data');
        Get.to(() => const SubmitSuccessScreen());
      } else {
        ProgressDialogUtils.hideProgressDialog();
        errorMethod("An Error Occurred");
      }
    } catch (error) {
      print("Error Submit $error");
    }
  }
}
