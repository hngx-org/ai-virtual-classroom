import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/screens/essay_result_screen/essay_result_binding.dart';
import 'package:flutter/material.dart';

/// A controller class for the EssayResultScreen.
///
/// This class manages the state of the EssayResultScreen, including the
/// current essayResultModelObj
class EssayResultController extends GetxController {
  TextEditingController copyController = TextEditingController();

  Rx<EssayResultModel> essayResultModelObj = EssayResultModel().obs;

  @override
  void onClose() {
    super.onClose();
    copyController.dispose();
  }
}
