import 'package:ai_virtual_classroom/controllers/submit_success_controller.dart';
import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SubmitSuccessScreen extends GetWidget<SubmitSuccessController> {
  const SubmitSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo900,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 37.h,
            top: 171.v,
            right: 37.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgSuccessiconcomponent,
                height: 123.adaptSize,
                width: 123.adaptSize,
              ),
              SizedBox(height: 28.v),
              Text(
                "Your Submission is Successful".tr,
                style: theme.textTheme.headlineSmall,
              ),
              Container(
                width: 316.h,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 15.v,
                  right: 10.h,
                ),
                child: Text(
                  "The Result is ready! \nOur AI has graded it with a feedback and has some learning books recommendation for you to peruse for the subject topic".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumOnError,
                ),
              ),
              CustomElevatedButton(
                  text: "Check Result".tr,
                  margin: EdgeInsets.fromLTRB(28.h, 27.v, 30.h, 5.v),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL122,
                  buttonTextStyle: CustomTextStyles.titleLargeIndigo900,
                  onTap: () {
                    ;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
