import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:ai_virtual_classroom/screens/sign_up_screen.dart';
import 'package:ai_virtual_classroom/screens/welcome_screen.dart';
import 'package:ai_virtual_classroom/themes/app_theme.dart';
import 'package:ai_virtual_classroom/themes/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper().themeData(),
      title: 'Virtual Classroom',
      home: const WelcomeScreen(),
    );
  }
}
