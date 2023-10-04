import 'package:flutter/material.dart';
import '../core/app_export.dart';

class HomeController extends GetxController {
  final topicController = TextEditingController();
  final essayController = TextEditingController();
  // OpenAIRepository openAI = OpenAIRepository();

  // Future<void> submitEassy() async {
  //   print("Here Essay");
  //   ProgressDialogUtils.showProgressDialog();
  //   try {
  //     String cookie = await authController.getCookie();
  //     String userInput =
  //         "Grade this essay from 1 - 10, feedback and personalized learning recommendations. ${essayController.text.trim()}";

  //     final aiResponse = await openAI.getChat(userInput, cookie);
  //     List<String> history = [
  //       "Hi?",
  //       "Grade this essay from 1 - 10, feedback and personalized learning recommendations"
  //     ];
  //     final response = await openAI.getChatCompletions(history, userInput, cookie);
  //     // final resp = {
  //     //   "history": [
  //     //     "user: Hello!",
  //     //     "AI: Hi! How can I help you today?",
  //     //     "user: I want you to grade essay for my student, can you do that?.",
  //     //     "AI: Yes, I can."
  //     //   ],
  //     //   'user_input': essayController.text.trim()
  //     // };
  //     // dynamic result = ApiClient().chat(
  //     //   requestData: resp,
  //     //   headers: header,
  //     // );
  //     // ProgressDialogUtils.hideProgressDialog();
  //     // // ProgressDialogUtils.hideProgressDialog();
  //     // if (result != null) {
  //     //   print(header);
  //     //   print('Success Result: ${result}');
  //     //   // print('Success Result Name: $data');
  //     //   // Get.to(() => const SubmitSuccessScreen());
  //     // } else {
  //     //   ProgressDialogUtils.hideProgressDialog();
  //     //   errorMethod("An Error Occurred");
  //     // }
  //   } catch (error) {
  //     print("Error Submit $error");
  //   }
  // }
}
