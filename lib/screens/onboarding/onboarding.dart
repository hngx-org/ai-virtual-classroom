import 'package:ai_virtual_classroom/core/utils/size_utils.dart';
import 'package:ai_virtual_classroom/screens/welcome_screen.dart';
import 'package:ai_virtual_classroom/widgets/app_custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/app_export.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
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
                                        style: CustomTextStyles
                                            .exoPrimaryContainer,
                                      ),
                                    ),
                                  ]),
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
                // onTap: () => Get.offAll(const WelcomeScreen()),
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
