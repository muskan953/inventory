import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';

class LogoutBottomsheet extends StatelessWidget {
  const LogoutBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.h),
        decoration: AppDecoration.dropPopUp.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: SingleChildScrollView( // ✅ Prevents overflow like DeleteAccountBottomsheet
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
                    Text(
                      "Are you sure you want to Logout?",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumGray800,
                    ),
                    SizedBox(height: 22.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomOutlinedButton(
                          width: 120.h,
                          text: "Cancel",
                          onPressed: () => Navigator.pop(context),
                        ),
                        CustomElevatedButton(
                          height: 42.h,
                          width: 120.h,
                          text: "Logout",
                          onPressed: () {
                            // TODO: logout logic
                          },
                        ),
                      ],
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
