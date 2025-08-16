import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get rajdhani {
    return copyWith(
      fontFamily: 'Rajdhani',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get satoshi {
    return copyWith(
      fontFamily: 'Satoshi',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBluegray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 10.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray60001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray60003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60003,
      );
  static get bodySmallGray70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodySmallGray7000110 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallSecondaryContainer10 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
// D text style
  static get dMSansGray90001 => TextStyle(
        color: appTheme.gray90001,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).dMSans;
  static get dMSansPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).dMSans;
  static get dMSansWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).dMSans;
// Display text style
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
// Label text style
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallInterWhiteA700 =>
      theme.textTheme.labelSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w700,
      );
// Satoshi text style
  static get satoshiWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).satoshi;
// Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 22.fSize,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleMediumGray70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70001,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRed500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red500,
      );
  static get titleSmallAmber500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amber500,
      );
  static get titleSmallBlue900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue900,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 15.fSize,
      );
  static get titleSmallBluegray90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 15.fSize,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallGray70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallGray80015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 15.fSize,
      );
  static get titleSmallGray800_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallGreenA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleSmallIndigo900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo900,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallOnSecondaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRed500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red500,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

