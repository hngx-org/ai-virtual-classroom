import 'package:ai_virtual_classroom/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/image_constants.dart';
import '../../themes/ThemeHelper.dart';
import '../../widgets/app_custom_buttons.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_style.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img76816ba190b04,
                height: 235,
                width: 235,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              //height: 50.v,
              width: 254.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Text(
                    'AI',
                    style: CustomTextStyles.exoOnPrimary,
                  ),
                ],
              ),
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
          SizedBox(height: 19.v),
          CustomElevatedButton(
            width: 267.h,
            text: 'Continue',
          ),
        ],
      )),
    );
  }
}
