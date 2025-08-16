import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart'; // ignore_for_file: must_be_immutable

class LogoutBottomsheet extends StatelessWidget {
  const LogoutBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.h,
      ),
      decoration: AppDecoration.dropPopUp.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
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
                Text(
                  "Logout",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 12.h),
                Container(
                  height: 120.h,
                  width: 120.h,
                  decoration: AppDecoration.fillPrimary1.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder60,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage36,
                        height: 80.h,
                        width: 80.h,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 160.h,
                  child: Text(
                    "Are you sure you want to Logout ?",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumGray800,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(
                        width: 120.h,
                        text: "Cancel",
                      ),
                      CustomElevatedButton(
                        height: 42.h,
                        width: 120.h,
                        text: "Logout",
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h)
        ],
      ),
    );
  }
}

