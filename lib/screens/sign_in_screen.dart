import 'package:ai_virtual_classroom/controller/sign_controller.dart';
import 'package:ai_virtual_classroom/core/app_exports.dart';
import 'package:ai_virtual_classroom/core/extensions/validators.dart';
import 'package:ai_virtual_classroom/core/global/global.dart';
import 'package:ai_virtual_classroom/screens/sign_up_screen.dart';
import 'package:ai_virtual_classroom/widgets/custom_elevated_button.dart';
import 'package:ai_virtual_classroom/widgets/custom_text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hng_authentication/widgets/rounded_bordered_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

final signInController = Get.put(SignInController());
bool obscurePassword = true;

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.v),
            Center(
              child: SvgPicture.asset('assets/images/img_knowledgecuate.svg'),
            ),
            // const Spacer(),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 34.h).copyWith(top: 30.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // RoundedBorderedTextField(
                  //   controller: signInController.emailController,
                  //   hintText: 'Email Address',
                  // ),
                  // const SizedBox(height: 8),
                  // RoundedBorderedTextField(
                  //   controller: signInController.passwordController,
                  //   hintText: 'Password',
                  //   obscureText: obscurePassword,
                  //   isPass: true,
                  //   icon: IconButton(
                  //     onPressed: () {
                  //       setState(() {
                  //         obscurePassword = !obscurePassword;
                  //       });
                  //     },
                  //     icon: Icon(
                  //       signInController.obscurePassword.value
                  //           ? Icons.visibility_off
                  //           : Icons.visibility,
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),

                  Text(
                    'Email address',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFormField(
                    controller: signInController.emailController,
                    hintText: 'name@example.com',
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     errorMethod("Field can not be empty");
                    //   } else if (!value.emailValidation) {
                    //     errorMethod("Enter a valid email address");
                    //   }
                    //   return null;
                    // },
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
                    controller: signInController.passwordController,
                    hintText: 'Must be 8',
                    obscureText: signInController.obscurePassword.value,
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     errorMethod('Password can not be empty');
                    //   } else if (!value.passwordValidation) {
                    //     errorMethod(
                    //         'Password must contain number, captial letter and \nspecial character');
                    //   }
                    //   return null;
                    // },
                    suffix: Obx(
                      () => IconButton(
                        onPressed: () {
                          setState(() {
                            signInController.obscurePassword.value =
                                !signInController.obscurePassword.value;
                          });
                        },
                        icon: Icon(
                          signInController.obscurePassword.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forget password',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40).copyWith(
                      top: 15,
                      bottom: 20,
                    ),
                    child: CustomElevatedButton(
                      onTap: () async {
                        // if (signInController.formKey.currentState!
                        //     .validate()) {
                        //   await signInController.signIn();
                        // }
                        await signInController.validate();
                      },
                      text: 'Sign In',
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have account?',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontSize: 18),
                ),
                TextButton(
                  onPressed: () => Get.to(() => SignUpScreen()),
                  child: Text(
                    "Sign up",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 16),
                  ),
                )
              ],
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
