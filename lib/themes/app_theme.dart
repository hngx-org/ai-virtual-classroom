import 'package:ai_virtual_classroom/themes/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  fontFamily: 'ExoRoman',
  useMaterial3: true,
  primaryColor: AppTheme().primaryColor,
  bottomNavigationBarTheme: bottomNav,
  appBarTheme: appBarTheme(),
).copyWith(
  scaffoldBackgroundColor: AppTheme().appBackgroundColor,
);

BottomNavigationBarThemeData bottomNav = BottomNavigationBarThemeData(
  elevation: 1,
  backgroundColor: AppTheme().bottomNavBarBG,
);
AppBarTheme appBarTheme() => AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppTheme().white,
      iconTheme: IconThemeData(color: AppTheme().black200),
    );
