import 'package:ai_virtual_classroom/themes/theme_helper.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Exo text style
  static get exoOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 73,
        fontWeight: FontWeight.w600,
      ).exo;
}

extension on TextStyle {
  TextStyle get exo {
    return copyWith(
      fontFamily: 'ExoRoman',
    );
  }
}
