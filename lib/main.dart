
import 'package:ai_virtual_classroom/core/global/global.dart';


import 'package:ai_virtual_classroom/themes/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'core/utils/initalbinding.dart';
import 'routes/app_routes.dart';


Future<void> main() async {
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
      title: 'AI Virtual classroom',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
