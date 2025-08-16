import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SizedBox(
              height: SizeUtils.height,
              child: Form(
                key: _formKey,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      _buildColumnenteryour(context),
                      SizedBox(height: 22.h),
                      _buildColumnemail(context),
                      SizedBox(height: 32.h),
                      _buildColumncontinue(context),
                      SizedBox(height: 74.h)
                    ],
                  ),
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
          top: 7.h,
          bottom: 24.h,
        ),
        onTap: () {},
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Forgot Password",
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnenteryour(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Column(
        children: [
          Text(
            "Enter your registered Gmail to recover your Password",
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
  Widget _buildColumnemail(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: CustomTextStyles.titleSmallOnPrimary,
          ),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: emailController,
            hintText: "nmold@gmail.com",
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 12.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGray,
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
        children: [
          CustomElevatedButton(
            text: "Continue",
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

