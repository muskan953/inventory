import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
//import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';



class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

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
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                children: [
                  _buildColumnpencil(context),
                  SizedBox(height: 16.h),
                  _buildColumnname(context),
                  SizedBox(height: 16.h),
                  _buildColumnemail(context),
                  SizedBox(height: 16.h),
                  _buildColumnmobilenum(context),
                  SizedBox(height: 16.h),
                  _buildColumnlocation(context),
                  SizedBox(height: 4.h)
                ],
              ),
            ),
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
        onTap: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Edit Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnpencil(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(
            height: 76.h,
            width: 76.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse276x76,
                  height: 76.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    38.h,
                  ),
                ),
                CustomIconButton(
                  height: 24.h,
                  width: 24.h,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.outlineWhiteATL12,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPencil,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnname(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: nameController,
            hintText: "abc",
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 12.h,
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
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: emailController,
            hintText: "abc@gmail.com",
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 12.h,
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
  Widget _buildColumnlocation(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Location",
            style: CustomTextStyles.titleSmallOnPrimary,
          ),
          SizedBox(height: 4.h),
          CustomTextFormField(
            controller: locationController,
            hintText: "e.g Panipat, Haryana, India",
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

  
}

