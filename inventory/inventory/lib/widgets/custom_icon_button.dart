import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get fillWhiteA1 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        borderRadius: BorderRadius.circular(14.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 0.h,
        ),
      );
  static BoxDecoration get fillWhiteATL20 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlinePrimaryTL20 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          )
        ],
      );
  static BoxDecoration get fillPrimaryTL24 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineWhiteATL12 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 0.h,
        ),
      );
  static BoxDecoration get outlineWhiteATL16 => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 0.h,
        ),
      );
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(14.h),
                border: Border.all(
                  color: theme.colorScheme.primary,
                  width: 0.h,
                ),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}

