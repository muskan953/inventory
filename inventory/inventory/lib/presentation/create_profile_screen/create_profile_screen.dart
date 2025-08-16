import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreateProfileScreen extends StatelessWidget {
  CreateProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController email1Controller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeUtils.height,
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    Text(
                      "Fill in the details to create your profile",
                      style: CustomTextStyles.titleMediumGray60001,
                    ),
                    SizedBox(height: 40.h),
                    _buildColumnname(context),
                    Spacer(),
                    _buildContinue(context),
                    SizedBox(height: 12.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
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
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: " and ",
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                              TextSpan(
                                text: "Terms & Conditions",
                                style: theme.textTheme.bodySmall,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 28.h)
                  ],
                ),
              ),
            ),
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
        onTap: () {},
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Create Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "Johnclair@gmail.com",
      hintStyle: theme.textTheme.bodyMedium!,
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.h,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
      filled: true,
      fillColor: appTheme.whiteA700,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Johnclair@gmail.com",
      hintStyle: theme.textTheme.bodyMedium!,
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.h,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
      filled: true,
      fillColor: appTheme.whiteA700,
    );
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return CustomTextFormField(
      controller: email1Controller,
      hintText: "Johnclair@gmail.com",
      hintStyle: theme.textTheme.bodyMedium!,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.h,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
      filled: true,
      fillColor: appTheme.whiteA700,
    );
  }

  /// Section Widget
  Widget _buildColumnname(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name",
            style: CustomTextStyles.titleSmallOnPrimary,
          ),
          SizedBox(height: 4.h),
          _buildName(context),
          SizedBox(height: 16.h),
          Text(
            "Email",
            style: CustomTextStyles.titleSmallOnPrimary,
          ),
          SizedBox(height: 4.h),
          _buildEmail(context),
          SizedBox(height: 16.h),
          Text(
            "Gender",
            style: CustomTextStyles.titleSmallOnPrimary,
          ),
          SizedBox(height: 4.h),
          _buildEmail1(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

