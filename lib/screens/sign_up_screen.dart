import 'package:ai_virtual_classroom/controller/signup_controller.dart';
import 'package:ai_virtual_classroom/core/app_export.dart';

import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:ai_virtual_classroom/widgets/app_custom_buttons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signUpController = Get.put(SignUpContrroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(ImageConstant.imgWebinarpana1),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 34.h).copyWith(top: 10.v),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      controller: signUpController.nameController,
                      hintText: 'Your name',
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Email address',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      controller: signUpController.emailController,
                      hintText: 'name@example.com',
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Password',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      controller: signUpController.passwordController,
                      hintText: 'Must be 8',
                      obscureText: signUpController.obscurePassword.value,
                      suffix: Obx(
                        () => IconButton(
                          onPressed: () {
                            setState(() {
                              signUpController.obscurePassword.value =
                                  !signUpController.obscurePassword.value;
                            });
                          },
                          icon: Icon(
                            signUpController.obscurePassword.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Comfirm Password',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      controller: signUpController.confirmController,
                      hintText: 'Must match',
                      obscureText:
                          signUpController.obscureConfirmPassword.value,
                      suffix: Obx(
                        () => IconButton(
                          onPressed: () {
                            setState(() {
                              signUpController.obscureConfirmPassword.value =
                                  !signUpController
                                      .obscureConfirmPassword.value;
                            });
                          },
                          icon: Icon(
                            signUpController.obscureConfirmPassword.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 40).copyWith(
                        top: 15,
                        bottom: 20,
                      ),
                      child: CustomElevatedButton(
                        text: 'Sign Up',
                        // onTap: () => Get.to(() => Dashboard()),
                        onTap: () => signUpController.validate(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontSize: 18),
                ),
                TextButton(
                  onPressed: () => Get.to(() => const SignInScreen()),
                  child: Text(
                    "Sign in",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 16),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
