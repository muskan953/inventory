import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import '../terms_and _condition/terms_and_condition.dart';
import '../privacy_policy/privacy_policy.dart';

// ignore_for_file: must_be_immutable
class ContinueWithPhoneNumberScreen extends StatelessWidget {
  ContinueWithPhoneNumberScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildColumnenteryour(context),
              SizedBox(height: 16.h),
              _buildColumnmobilenum(context),
              SizedBox(height: 40.h),
              _buildColumncontinue(context),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImageOne(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.h,
          bottom: 23.h,
        ),
        onTap: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Phone Number",
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnenteryour(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 34.h),
      child: Column(
        children: [
          Text(
            "Enter your mobile number to continue using Inventory Management System",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumGray60001.copyWith(
              height: 1.50,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmobilenum(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mobile Number",
            style: CustomTextStyles.titleSmallOnPrimary,
          ),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: mobileNumberController,
            hintText: "1234567890",
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 12.h,
            ),
            borderDecoration:
                TextFormFieldStyleHelper.outlineOnPrimaryContainer,
            filled: true,
            fillColor: appTheme.whiteA700,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncontinue(BuildContext context) {
  return Container(
    width: double.maxFinite,
    margin: EdgeInsets.symmetric(horizontal: 16.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 🔼 Move this RichText ABOVE the button
        SizedBox(
          width: 306.h,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "By continuing you agree to our ",
                  style: CustomTextStyles.bodySmallBlack900,
                ),
                TextSpan(
                  text: "Privacy Policy",
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.blue,
                    decoration: TextDecoration.none,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrivacyPolicyScreen(),
                          ),
                         );
                    },
                ),
                TextSpan(
                  text: " and ",
                  style: CustomTextStyles.bodySmallBlack900,
                ),
                TextSpan(
                  text: "Terms & Conditions",
                  style: theme.textTheme.bodySmall?.copyWith(
                   color: Colors.blue,
                    decoration: TextDecoration.none, 
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TermsAndConditionsScreen(),
                          ),
                         );
                    },
                )
                

              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),

        SizedBox(height: 12.h),

        /// Continue button comes after text
        CustomElevatedButton(
          text: "Continue",
          onPressed: () {
            // Handle continue action
          },
        ),
      ],
    ),
  );
}

}

