import 'package:get/get.dart';

import '../core/utils/size_utils.dart';

import '../core/app_export.dart';
import 'package:flutter/material.dart';

import '../themes/app_decoration.dart';
import 'navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: 375.h,
                child: Column(children: [
                  Container(
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.v),
                                child: Text("lbl_app_navigation".tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(1),
                                        fontSize: 20.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("msg_check_your_app_s".tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.blueGray400,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(height: 5.v),
                        Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: theme.colorScheme.primary.withOpacity(1))
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapSplashscreen();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "lbl_splash_screen".tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .primary
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapOnBoarding();
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "lbl_on_boarding".tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .primary
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ])))
                              ]))))
                ]))));
  }

  /// Navigates to the splashScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashScreen.
  onTapSplashscreen() {
    Get.toNamed(
      AppRoutes.splashScreen,
    );
  }

  /// Navigates to the onBoardingScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the onBoardingScreen.
  onTapOnBoarding() {
    Get.toNamed(
      AppRoutes.onBoardingScreen,
    );
  }
}
