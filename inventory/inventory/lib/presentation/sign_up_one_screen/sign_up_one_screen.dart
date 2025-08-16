import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';

class SignUpOneScreen extends StatefulWidget {
  const SignUpOneScreen({Key? key}) : super(key: key);

  @override
  State<SignUpOneScreen> createState() => _SignUpOneScreenState();
}

class _SignUpOneScreenState extends State<SignUpOneScreen> {

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  bool checkbox = false;

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
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      "Fill in the details to get started with our inventory management system",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumGray60001.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Name",
                            style: CustomTextStyles.titleSmallOnPrimary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        _buildName(context),
                        SizedBox(height: 16.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Company Name",
                            style: CustomTextStyles.titleSmallOnPrimary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        _companyname(context),
                        SizedBox(height: 16.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Gender",
                            style: CustomTextStyles.titleSmallOnPrimary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        _buildgender(context),
                        SizedBox(height: 16.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mobile Number",
                            style: CustomTextStyles.titleSmallOnPrimary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        _buildMobileNumber(context),
                        SizedBox(height: 16.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Location",
                            style: CustomTextStyles.titleSmallOnPrimary,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        _buildLocation(context),
                        SizedBox(height: 10.h),
                        _buildCheckbox(context),
                        SizedBox(height: 20.h),
                        _buildSignup(context),
                        
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 64.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account?",
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "Login",
                          style: theme.textTheme.bodySmall,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 4.h)
                ],
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
        text: "Account Details",
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
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
  Widget _companyname(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "NMOLD",
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
  Widget _buildgender(BuildContext context) {
    return CustomTextFormField(
      controller: genderController,
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
  Widget _buildMobileNumber(BuildContext context) {
    return CustomTextFormField(
      controller: mobileNumberController,
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
  Widget _buildLocation(BuildContext context) {
    return CustomTextFormField(
      controller: locationController,
      hintText: "e.g Panipat, Haryana, India",
      textInputAction: TextInputAction.done,
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
  

Widget _buildCheckbox(BuildContext context) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Row(
      children: [
        Checkbox(
          value: checkbox,
          onChanged: (value) {
            checkbox = value!;
            // You'll need to convert this to a StatefulWidget to use setState
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'Agree to the ',
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Terms & Conditions',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.none,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // TODO: Navigate to terms page or show a dialog
                      //Navigator.push(
                        //context,
                        //MaterialPageRoute(
                          //builder: (context) => TermsAndConditionsScreen(),
                        //),
                     // );
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


  /// Section Widget
  Widget _buildSignup(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}

