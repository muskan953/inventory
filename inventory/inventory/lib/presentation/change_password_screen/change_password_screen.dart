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
  bool isPasswordVisible = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildColumnnowyoucan(context),
                SizedBox(height: 28.h),
                _buildColumnnewpasswo(context),
                SizedBox(height: 32.h),
                CustomElevatedButton(
                  text: "Save Changes",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // ✅ perform save logic here
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Password Changed Successfully")),
                      );
                    }
                  },
                ),
                SizedBox(height: 20.h),
              ],
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
        margin: EdgeInsets.only(left: 16.h, top: 7.h, bottom: 24.h),
        onTap: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: AppbarTitle(text: "Change Password"),
    );
  }

  /// Info text
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
            style: CustomTextStyles.titleMediumGray60001.copyWith(height: 1.50),
          )
        ],
      ),
    );
  }

  /// Password Field
  Widget _buildColumnnewpasswo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("New Password", style: CustomTextStyles.titleSmallOnPrimary),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: newpasswordController,
            textInputAction: TextInputAction.done,
            obscureText: !isPasswordVisible,
            suffix: Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  size: 28,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
            ),
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
            filled: true,
            fillColor: appTheme.whiteA700,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
