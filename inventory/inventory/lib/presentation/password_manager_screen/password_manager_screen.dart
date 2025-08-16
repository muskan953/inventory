import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PasswordManagerScreen extends StatelessWidget {
  PasswordManagerScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpassword1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 22.h,
          ),
          child: Column(
            children: [
              _buildCurrent(context),
              SizedBox(height: 28.h),
              _buildChangepassword(context),
              SizedBox(height: 4.h)
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_buildSavechanges(context)],
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
          top: 16.h,
          bottom: 16.h,
        ),
        onTap: () {},
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Password Manager",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.only(
            top: 14.h,
            right: 14.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgUserPrimary,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 14.h,
            right: 29.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 12.h, 12.h, 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEyeoffGray800,
          height: 20.h,
          width: 16.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 44.h,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
      filled: true,
      fillColor: appTheme.whiteA700,
    );
  }

  /// Section Widget
  Widget _buildCurrent(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Current Password",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 8.h),
          _buildPassword(context),
          SizedBox(height: 2.h),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot password?",
              style: theme.textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return CustomTextFormField(
      controller: newpasswordController,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 12.h, 12.h, 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEyeoffGray800,
          height: 20.h,
          width: 16.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 44.h,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
      filled: true,
      fillColor: appTheme.whiteA700,
    );
  }

  /// Section Widget
  Widget _buildNewpassword1(BuildContext context) {
    return CustomTextFormField(
      controller: newpassword1Controller,
      textInputAction: TextInputAction.done,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 12.h, 12.h, 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEyeoffGray800,
          height: 20.h,
          width: 16.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 44.h,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
      filled: true,
      fillColor: appTheme.whiteA700,
    );
  }

  /// Section Widget
  Widget _buildChangepassword(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Text(
            "Change Password",
            style: CustomTextStyles.titleMediumBlack900,
          ),
          SizedBox(height: 24.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "New Password",
              style: CustomTextStyles.titleSmallGray900,
            ),
          ),
          SizedBox(height: 8.h),
          _buildNewpassword(context),
          SizedBox(height: 24.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Confirm New Password",
              style: CustomTextStyles.titleSmallGray900,
            ),
          ),
          SizedBox(height: 8.h),
          _buildNewpassword1(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSavechanges(BuildContext context) {
    return CustomElevatedButton(
      text: "Save Changes",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 40.h,
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

