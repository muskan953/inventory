import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
//import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangeMailScreen extends StatelessWidget {
  ChangeMailScreen({Key? key})
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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                 Center(
                  child: Text(
                    "Enter your registered Gmail",
                    maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                       style: CustomTextStyles.titleMediumGray60001.copyWith(
                        height: 1.50, )
                 ),
                ),
                  _buildEmailInputSection(context),
                  SizedBox(height: 20.h),
                  
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_buildContinue(context)],
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
        onTap: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Change Mail",
      ),

    );
  }

  /// Section Widget
  Widget _buildEmailInputSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: theme.textTheme.titleSmall,
            
          ),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: emailController,
            hintText: "nmold@gmail.com",
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 12.h,
              
            ),
            validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  },
  
          )
        ],
      ),
    );
  }

  

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
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

