import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Drop decorations
  static BoxDecoration get dropPopUp => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get dropTabbar => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onError,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -2,
              0,
            ),
          )
        ],
      );
// Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple50,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA100,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
      );
// Outline decorations
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 0.39.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer2 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer3 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimaryContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration();
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 0.49.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get circleBorder38 => BorderRadius.circular(
        38.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
// Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20.h),
      );
  static BorderRadius get customBorderBL34 => BorderRadius.only(
        bottomLeft: Radius.circular(34.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder76 => BorderRadius.circular(
        76.h,
      );
}

