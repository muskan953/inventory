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
    return Material(
      color: Colors.transparent, // ✅ transparent bg
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.h),
        decoration: AppDecoration.dropPopUp.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: SingleChildScrollView( // ✅ prevents overflow
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: 110.h,
                      child: Divider(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    SizedBox(height: 12.h),

                    /// ✅ Success Image + Close Button
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImageRemovebgPreview,
                            height: 200.h,
                            width: 200.h,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context), // ✅ close popup
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCloseBlack900,
                              height: 24.h,
                              width: 20.h,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16.h),

                    /// ✅ Title
                    Text(
                      "Mail Changed Successfully",
                      style: CustomTextStyles.titleMediumBlack900_2,
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 8.h),

                    /// ✅ Description
                    Text(
                      "Yey! your mail has been changed successfully. You can continue using this app.",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmallGray600.copyWith(height: 1.33),
                    ),

                    SizedBox(height: 22.h),

                    /// ✅ Done Button
                    CustomElevatedButton(
                      height: 42.h,
                      text: "Done",
                      margin: EdgeInsets.symmetric(horizontal: 8.h),
                      buttonStyle: CustomButtonStyles.outlineGray,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
