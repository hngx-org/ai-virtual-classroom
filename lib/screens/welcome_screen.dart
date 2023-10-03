import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/themes/app_theme.dart';
import 'package:ai_virtual_classroom/widgets/app_custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:ai_virtual_classroom/screens/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 72.h)
            .copyWith(bottom: 75.v, top: 80.h),
        child: Column(
          children: [
            // Center(
            //   child: SvgPicture.asset(ImageConstant.imgGradesbro1),
            // ),
            CustomImageView(
              height: 300.v,
              width: 500.h,
              alignment: Alignment.center,
              svgPath: ImageConstant.imgGradesbro1.toString(),
            ),
            //SizedBox(height: 30.v),
            const Spacer(),
            Text(
              'Lets fine the "A" with us',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Please Sign In to view personalized \n recommendations',
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
            ),
            //SizedBox(height: 40.v),
            const Spacer(),
            CustomElevatedButton(
                text: 'Sign In',
                onTap: () {
                  FocusScope.of(context).unfocus();
                  Get.offAll(
                    () => const SignInScreen(),
                  );
                }),
            SizedBox(height: 20.v),
            CustomElevatedButton(
                text: 'Sign Up',
                buttonStyle: CustomButtonStyles.outlinePrimaryTL122,
                buttonTextStyle: TextStyle(
                    fontFamily: 'ExoRoman',
                    color: AppTheme().primaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 20.fSize),
                onTap: () {
                  FocusScope.of(context).unfocus();
                  Get.offAll(
                    const SignUpScreen(),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
