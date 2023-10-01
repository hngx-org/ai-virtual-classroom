import 'package:ai_virtual_classroom/core/app_exports.dart';
import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:ai_virtual_classroom/widgets/custom_elevated_button.dart';
import 'package:ai_virtual_classroom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      hintText: '***************',
                      obscureText: true,
                      suffix: const Icon(Icons.visibility_off),
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
                      hintText: '***************',
                      obscureText: true,
                      suffix: const Icon(Icons.visibility_off),
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
                  onPressed: () => Get.to(() => SignInScreen()),
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
