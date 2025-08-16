import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarSubtitleTwo extends StatelessWidget {
  AppbarSubtitleTwo({Key? key, required this.text, this.margin, this.onTap})
      : super(
          key: key,
        );

  final String text;

  final EdgeInsetsGeometry? margin;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ),
    );
  }
}

