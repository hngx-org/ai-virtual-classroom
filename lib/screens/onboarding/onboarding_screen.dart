import 'package:ai_virtual_classroom/screens/welcome_screen.dart';
import 'package:ai_virtual_classroom/themes/custom_button_style.dart';
import 'package:ai_virtual_classroom/themes/theme_helper.dart';
import 'package:get/get.dart';

import '../../core/utils/image_constants.dart';
import '../../core/utils/size_utils.dart';

//import '../../widgets/app_custom_buttons.dart';
import '../../widgets/app_custom_buttons.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_style.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_screen_controller.dart';

class OnBoardingScreen extends GetView<OnBoardingController> {
  const OnBoardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: appTheme.gray100,
      body: SizedBox(
        width: 411.h,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: Column(
                  children: [
                    SizedBox(
                      height: 350.v,
                      width: 254.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img76816ba190b04,
                            height: 235,
                            width: 235,
                            alignment: Alignment.topCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 150.v,
                              width: 254.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      'AI',
                                      style:
                                          CustomTextStyles.exoPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Enhanced Virtual Classroom',
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 101.v),
                    SizedBox(
                      height: 10.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 10,
                          activeDotColor: theme.colorScheme.onPrimary,
                          dotColor: theme.colorScheme.secondaryContainer,
                          dotHeight: 10.v,
                          dotWidth: 10.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                buttonStyle: CustomButtonStyles.outlinePrimaryTL123,
                onTap: () => Get.offAll(const WelcomeScreen()),
                width: 267.h,
                text: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
