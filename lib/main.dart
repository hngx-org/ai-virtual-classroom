import 'package:ai_virtual_classroom/core/global/global.dart';
import 'package:ai_virtual_classroom/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_exports.dart';

void main() async {
  await Global.init();
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
