import 'package:ai_virtual_classroom/controller/auth_controller.dart';
import 'package:ai_virtual_classroom/controller/home_controller.dart';
import 'package:ai_virtual_classroom/controller/logout_controller.dart';
import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/core/utils/utlis.dart';
import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:ai_virtual_classroom/themes/app_theme.dart';
import 'package:ai_virtual_classroom/widgets/app_custom_buttons.dart';

import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    // Define your color scheme based on your app's theme
    final ColorScheme currentColorScheme = theme.colorScheme;

// Use the TextThemes class to create a TextTheme
    final TextTheme myTextTheme = TextThemes.textTheme(currentColorScheme);
    return Scaffold(
      appBar: AppBar(
        title: Text("Submit Your Essay!"),
      ),
      drawer: Drawer(
        child: ListView(),
      ),
      body: SafeArea(
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
                                text: 'Good ',
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: Utils.getTimeOfDay(),
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                      ),
                      Text("Hi $_savedName"),
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
                                color: const Color.fromARGB(255, 89, 88, 88))),
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
              SizedBox(height: 20.v),
              CustomElevatedButton(
                text: "Submit",
                margin: EdgeInsets.symmetric(horizontal: 40.h),
                onTap: () => homeController.submitEassy(),
              ),
              TextButton(
                  onPressed: () {
                    authCrtl.logout();
                    logoutCtr.logout();
                    Get.offAll(() => const SignInScreen());
                  },
                  child: const Text("Logout"))
            ],
          ),
        ),
      ),
    );
  }
}
