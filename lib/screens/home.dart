import 'package:ai_virtual_classroom/controller/auth_controller.dart';
import 'package:ai_virtual_classroom/controller/home_controller.dart';
import 'package:ai_virtual_classroom/controller/logout_controller.dart';
import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/core/utils/progress_dialog_utils.dart';
import 'package:ai_virtual_classroom/core/utils/utlis.dart';
import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:ai_virtual_classroom/screens/submit_success/submit_success_screen.dart';
import 'package:ai_virtual_classroom/themes/app_theme.dart';
import 'package:ai_virtual_classroom/widgets/app_custom_buttons.dart';

import 'package:flutter/material.dart';
import 'package:hngx_openai/repository/openai_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Get.put(HomeController());

  final authCrtl = Get.find<AuthController>();
  final logoutCtr = Get.put(LogOut());

  String _savedName = '';
  String essayResult = '';

  @override
  void initState() {
    super.initState();
    _getName();
  }

  Future<void> _getName() async {
    String name = await authCrtl.getName();
    setState(() {
      _savedName = name;
    });
  }

  OpenAIRepository openAI = OpenAIRepository();

  Future<void> submitEassy() async {
    print("Here Essay");
    ProgressDialogUtils.showProgressDialog();
    try {
      final essay = homeController.essayController.text.trim();
      String cookie = await authController.getCookie();
      String userInput =
          "Grade this essay from 1 - 10, feedback and personalized learning recommendations. $essay";

      final aiResponse = await openAI.getChat(userInput, cookie);
      List<String> history = [
        "Hi?",
        "Grade this essay from 1 - 10, feedback and personalized learning recommendations"
      ];
      ProgressDialogUtils.hideProgressDialog();
      final response =
          await openAI.getChatCompletions(history, userInput, cookie);

      setState(() {
        essayResult = aiResponse;
      });
    } catch (error) {
      print("Error Submit $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    // Define your color scheme based on your app's theme
    final ColorScheme currentColorScheme = theme.colorScheme;

// Use the TextThemes class to create a TextTheme
    final TextTheme myTextTheme = TextThemes.textTheme(currentColorScheme);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Submit Your Essay!",
          style: theme.textTheme.bodyLarge,
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 100,
              color: const Color(0xFF191D88),
              alignment: Alignment.center,
              child: const Text(
                'AI Virtual Classroom',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Color(0xFF364356),
                size: 24,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Home item tap.
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.payment,
                color: Color(0xFF364356),
                size: 24,
              ),
              title: const Text(
                'Payments',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Payments item tap.
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.assignment,
                color: Color(0xFF364356),
                size: 24,
              ),
              title: const Text(
                'Essay Results',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Essay Results item tap.
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Color(0xFF364356),
                size: 24,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF364356),
                ),
              ),
              onTap: () {
                // Handles Notifications item tap.
              },
            ),
            const Spacer(),
            CustomElevatedButton(
                width: 200,
                margin: const EdgeInsets.only(bottom: 20),
                text: 'Logout',
                buttonStyle: CustomButtonStyles.outlinePrimaryTL122,
                buttonTextStyle: TextStyle(
                    fontFamily: 'ExoRoman',
                    color: AppTheme().primaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 20.fSize),
                onTap: () {
                  FocusScope.of(context).unfocus();
                  authCrtl.logout();
                  logoutCtr.logout();
                  Get.offAll(() => const SignInScreen());
                }),
            // ListTile(
            //   leading: Icon(
            //     Icons.logout,
            //     color: const Color(0xFF364356),
            //     size: 24,
            //   ),
            //   title: Text(
            //     'Logout',
            //     style: TextStyle(
            //       fontSize: 16,
            //       color: const Color(0xFF364356),
            //     ),
            //   ),
            //   onTap: () {
            //     // Handles Logout item tap.
            //   },
            // ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Good',
                                style: myTextTheme.bodyMedium?.copyWith(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: Utils.getTimeOfDay(),
                                style: myTextTheme.bodyMedium?.copyWith(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "Hi $_savedName",
                          style: myTextTheme.bodyMedium?.copyWith(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 20,
                    )
                  ],
                ),
                SizedBox(height: 30.v),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Column(
                      children: [
                        Text(
                          "Your Teacher has given an essay assignment",
                          textAlign: TextAlign.center,
                          style: myTextTheme.bodyMedium?.copyWith(
                            fontSize: 18.fSize,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        const CustomTextFormField(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Topic assigned to you?',
                        ),
                        SizedBox(height: 30.v),
                        Container(
                          width: double.infinity,
                          height: 300,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 89, 88, 88))),
                          child: TextFormField(
                            controller: homeController.essayController,
                            minLines: 1,
                            maxLines: 100,
                            autocorrect: false,
                            cursorColor: AppTheme().primaryColor,
                            autovalidateMode: AutovalidateMode.disabled,
                            decoration: const InputDecoration(
                              hintText: 'Your Essay',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text("You have 3 free trials left"),
                Text(essayResult),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL123,
                    text: "Submit",
                    margin: EdgeInsets.symmetric(horizontal: 40.h),
                    onTap: () {
                      // homeController.submitEassy();
                      submitEassy();
                      // Get.to(() => SubmitSuccessScreen(essayResult));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
