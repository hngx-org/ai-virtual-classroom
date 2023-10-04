import 'package:ai_virtual_classroom/controller/essay_result_controller.dart';
import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/widgets/app_bar/appbar_image.dart';
import 'package:ai_virtual_classroom/widgets/app_bar/appbar_image_1.dart';
import 'package:ai_virtual_classroom/widgets/app_bar/appbar_title.dart';
import 'package:ai_virtual_classroom/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EssayResultScreen extends GetWidget<EssayResultController> {
  final String response;
  const EssayResultScreen(this.response, {Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onInverseSurface,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 58.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25.h, 13.v, 46.h, 27.v),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.background
                                      .withOpacity(0.53),
                                  borderRadius: BorderRadius.circular(
                                    2.h,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: Text(
                                  "lbl_12_00".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgSignal,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              radius: BorderRadius.circular(
                                1.h,
                              ),
                              margin: EdgeInsets.only(bottom: 3.v),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgOffer,
                              height: 13.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                bottom: 3.v,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgCamera,
                              height: 13.v,
                              width: 8.h,
                              margin: EdgeInsets.only(
                                left: 5.h,
                                bottom: 3.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomAppBar(
                      leadingWidth: 39.h,
                      leading: AppbarImage(
                        svgPath: ImageConstant.imgFimenu,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          top: 17.v,
                          bottom: 17.v,
                        ),
                      ),
                      title: AppbarTitle(
                        text: "Hi, Kaycey".tr,
                        margin: EdgeInsets.only(left: 15.h),
                      ),
                      actions: [
                        AppbarImage1(
                          imagePath: ImageConstant.imgProfile,
                          margin: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 12.v,
                          ),
                        ),
                      ],
                      styleType: Style.bgShadow_1,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Text(
                "Your Essay Result Analysis".tr,
                style: CustomTextStyles.titleLargeIndigo900,
              ),
              SizedBox(height: 21.v),
              SizedBox(
                height: 101.v,
                width: 250.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 2.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 64.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Grade".tr,
                              style:
                                  CustomTextStyles.titleLargeOnInverseSurface,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "67.5%".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                            SizedBox(height: 6.v),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 32.v),
                        child: SizedBox(
                          width: 250.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              SizedBox(
                height: 216.v,
                width: 374.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Feedbacks".tr,
                        style: CustomTextStyles.titleLargeIndigo900,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 374.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  theme.colorScheme.primary.withOpacity(0.03),
                              spreadRadius: 2.h,
                              blurRadius: 2.h,
                              offset: Offset(
                                0,
                                7,
                              ),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          child: TextFormField(
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: controller.copyController,
                            //maxLength: 700,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              isDense: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              SizedBox(
                height: 200.v,
                width: 398.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Recommended Books".tr,
                              style:
                                  CustomTextStyles.titleLargeOnInverseSurface,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 17.v,
                                right: 5.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Things fall Apart".tr,
                                    style: CustomTextStyles
                                        .titleMediumMontserratIndigo900,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.v),
                                    child: Text(
                                      "by Chinua Achebe".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16.v,
                                right: 5.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Things fall Apart".tr,
                                    style: CustomTextStyles
                                        .titleMediumMontserratIndigo900,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 3.v),
                                    child: Text(
                                      "by Chinua Achebe".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16.v,
                                right: 5.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Things fall Apart".tr,
                                    style: CustomTextStyles
                                        .titleMediumMontserratIndigo900,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5.v),
                                    child: Text(
                                      "by Chinua Achebe".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 15.v,
                                right: 5.h,
                                bottom: 3.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Things fall Apart".tr,
                                    style: CustomTextStyles
                                        .titleMediumMontserratIndigo900,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 7.v),
                                    child: Text(
                                      "by Chinua Achebe".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 42.v),
                        child: SizedBox(
                          width: 398.h,
                          child: Divider(
                            color: appTheme.gray300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
