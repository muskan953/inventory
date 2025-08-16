import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );

  final String? imagePath;

  final EdgeInsetsGeometry? margin;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        26.h,
      ),
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 24.h,
          width: 24.h,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            26.h,
          ),
        ),
      ),
    );
  }
}

