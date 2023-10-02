import 'package:ai_virtual_classroom/themes/theme_helper.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'splash_controller.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      body: SafeArea(
        child: SizedBox(
          height: 785,
          width: 411,
          child: Image.asset(
            'assets/images/image 1.png',
            height: 290,
            width: 474,
          ),
        ),
      ),
    );
  }
}
