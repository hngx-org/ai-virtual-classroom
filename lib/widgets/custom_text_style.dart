import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/themes/theme_helper.dart';
import 'package:flutter/material.dart';




/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 16.fSize,
      );
  static get bodyLargeSecondaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Exo text style
  static get exoIndigo900 => TextStyle(
        color: appTheme.indigo900,
        fontSize: 73.fSize,
        fontWeight: FontWeight.w600,
      ).exo;
  static get exoPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer,
        fontSize: 73.fSize,
        fontWeight: FontWeight.w600,
      ).exo;
  // Title text style
  static get titleLargeBluegray800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleLargeIndigo900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo900,
      );
  static get titleLargeOnError => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnInverseSurface => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onInverseSurface,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumIndigo900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo900,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMontserratIndigo900 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.indigo900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallExoIndigo900 => theme.textTheme.titleSmall!.exo.copyWith(
        color: appTheme.indigo900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallExoIndigo900SemiBold =>
      theme.textTheme.titleSmall!.exo.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.56),
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get exo {
    return copyWith(
      fontFamily: 'ExoRoman',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
