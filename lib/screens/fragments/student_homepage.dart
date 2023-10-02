import 'package:ai_virtual_classroom/controller/home_controller.dart';
import 'package:ai_virtual_classroom/core/app_exports.dart';
import 'package:ai_virtual_classroom/core/utils/utlis.dart';
import 'package:ai_virtual_classroom/widgets/custom_elevated_button.dart';
import 'package:ai_virtual_classroom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';

class StudentHomePage extends StatelessWidget {
  StudentHomePage({super.key});
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                        text: TextSpan(children: [
                      TextSpan(text: 'Good', style: theme.textTheme.bodyLarge),
                      TextSpan(
                          text: Utils.getTimeOfDay(),
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ))
                    ])),
                    Text(
                      "Hi, Kaycey",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
                CircleAvatar(
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
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontSize: 18.fSize,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    CustomTextFormField(
                      hintText: 'Topic assigned to you?',
                    ),
                    SizedBox(height: 30.v),
                    Container(
                      width: double.infinity,
                      height: 300,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: Color.fromARGB(255, 89, 88, 88))),
                      child: TextFormField(
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
            )
          ],
        ),
      ),
    );
  }
}
