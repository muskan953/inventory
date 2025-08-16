import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class SuccessPopupScreen extends StatelessWidget {
  const SuccessPopupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildColumn(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 18.h,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 50.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImageRemovebgPreview,
                        height: 200.h,
                        width: 200.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCloseBlack900,
                        height: 24.h,
                        width: 20.h,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  "Mail Changed Successfully",
                  style: CustomTextStyles.titleMediumBlack900_2,
                ),
                SizedBox(height: 8.h),
                Text(
                  "Yey! your mail has been changed successfully. You can continue using this app.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallGray600.copyWith(
                    height: 1.33,
                  ),
                ),
                SizedBox(height: 28.h),
                CustomElevatedButton(
                  height: 42.h,
                  text: "Done",
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  buttonStyle: CustomButtonStyles.outlineGray,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

