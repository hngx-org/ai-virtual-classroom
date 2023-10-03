import 'package:ai_virtual_classroom/themes/theme_helper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'core/utils/initalbinding.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
