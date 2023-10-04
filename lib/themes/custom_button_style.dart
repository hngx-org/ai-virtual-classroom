import 'dart:ui';
import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/themes/app_theme.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlinePrimaryTL122 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 14,
      );

  static ButtonStyle get outlinePrimaryTL123 => ElevatedButton.styleFrom(
        backgroundColor: AppTheme().primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 14,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
