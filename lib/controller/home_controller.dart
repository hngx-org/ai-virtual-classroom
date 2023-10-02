import 'package:ai_virtual_classroom/core/app_exports.dart';
import 'package:ai_virtual_classroom/core/extensions/validators.dart';
import 'package:ai_virtual_classroom/core/utils/progress_dialog_utils.dart';
import 'package:ai_virtual_classroom/services/api_client.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  final topicController = TextEditingController();
  final essayController = TextEditingController();

  Future<void> submitEassy() async {
    print("Here Essay");

    final resp = {'user_input': essayController.text.trim()};
    dynamic result = ApiClient().chat(requestData: resp);
    ProgressDialogUtils.hideProgressDialog();
    if (result != null) {
      final data = result['message'];
      print('Success Result: $result');
      print('Success Result Name: $data');
    } else {
      errorMethod("An Error Occurred");
    }
  }
}
