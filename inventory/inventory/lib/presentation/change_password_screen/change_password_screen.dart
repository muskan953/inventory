import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController newpasswordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: SafeArea(
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.h),
    child: Column(
      children: [
        _buildColumnnowyoucan(context),
        SizedBox(height: 28.h),
        _buildColumnnewpasswo(context),
        SizedBox(height: 32.h),
        CustomElevatedButton(
          text: "Save Changes",
        ),
        SizedBox(height: 20.h), // distance from bottom
      ],
    ),
  ),),),
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
        text: "Change Password",
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnnowyoucan(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Column(
        children: [
          Text(
            "Now you can change your Password at ease. Let’s go!",
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
 Widget _buildColumnnewpasswo(BuildContext context) {
  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.symmetric(horizontal: 16.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "New Password",
          style: CustomTextStyles.titleSmallOnPrimary,
        ),
        SizedBox(height: 4.h),
        CustomTextFormField(
          controller: newpasswordController,
          textInputAction: TextInputAction.done,
          obscureText: _obscurePassword,
          suffix: IconButton(
            icon: Icon(
              _obscurePassword ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
          suffixConstraints: BoxConstraints(maxHeight: 44.h),
          contentPadding: EdgeInsets.all(12.h),
          borderDecoration: TextFormFieldStyleHelper.outlineGray,
          filled: true,
          fillColor: appTheme.whiteA700,
        ),
      ],
    ),
  );
}

  /// Section Widget
  Widget _buildColumnsave(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          CustomElevatedButton(
            text: "Save Changes",
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

