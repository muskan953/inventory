import 'package:flutter/material.dart';
import 'package:inventory/presentation/change_password_screen/change_password_screen.dart';
import 'package:inventory/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:inventory/presentation/logout_bottomsheet/logout_bottomsheet.dart';
import 'package:inventory/presentation/notifications_preferances_screen/notifications_preferances_screen.dart';
import 'package:inventory/presentation/change_mail_screen/change_mail_screen.dart';
import 'package:inventory/presentation/delete_account_bottomsheet/delete_account_bottomsheet.dart';
import 'package:inventory/presentation/privacy_policy/privacy_policy.dart';
import 'package:inventory/presentation/terms_and%20_condition/terms_and_condition.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
//import '../../widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
//import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_switch.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
              body: SafeArea(
  child: SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(16.0), // Adjust as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildColumnarrowleft(context), // Your custom header

          SizedBox(height: 16),

          Text(
            "Profile Settings",
            style: CustomTextStyles.titleMediumBlack900_2,
          ),
          SizedBox(height: 6),

          _buildColumneditprofi(context), // Your Edit Profile, Change Password, etc.

          SizedBox(height: 20),

          _buildRowdarkmode(context), // Your dark mode toggle

          SizedBox(height: 20),

          Text(
            "Account Settings",
            style: CustomTextStyles.titleMediumBlack900_2,
          ),
          SizedBox(height: 8),

          _buildColumnthumbsup(context), // Your Change Mail, Delete Account, Logout
        ],
      ),
    ),
  ),
),

      ),
    );
  }

  /// Section Widget
 Widget _buildColumnarrowleft(BuildContext context) {
  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.symmetric(vertical: 16.h),
    decoration: AppDecoration.fillPrimary.copyWith(
      borderRadius: BorderRadiusStyle.customBorderBL20,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 38.h),
        CustomAppBar(
          height: 28.h,
          leadingWidth: 40.h,
          leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 2.h,
              bottom: 2.h,
            ),
            onTap: () => onTapArrowleftone(context),
          ),
          centerTitle: true,
          title: AppbarSubtitleOne(
            text: "Settings",
          ),
          // Removed trailing icons as per previous message
        ),
        SizedBox(height: 22.h),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse2,
              height: 52.h,
              width: 52.h,
              radius: BorderRadius.circular(26.h),
            ),
            SizedBox(height: 8.h),
            Text(
              "Fick Shun",
              style: CustomTextStyles.titleMedium18,
            ),
            Text(
              "Fickshun@gmail.com",
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ],
        ),
      ],
    ),
  );
}

  /// Section Widget
  Widget _buildColumneditprofi(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildRowchangepasswo(
              context,
              changepassword: "Edit Profile",
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: _buildRowchangepasswo(
              context,
              changepassword: "Change Password",
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notification Preferences",
                  style: CustomTextStyles.titleSmallIndigo900,
                ),
                GestureDetector(
                  onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationsPreferancesScreen(),
                          ),
                         );
                   },
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.h,
                  width: 24.h,
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowdarkmode(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.dropTabbar.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Dark Mode",
            style: CustomTextStyles.titleSmallOnErrorContainer,
          ),
          CustomSwitch(
            value: isSelectedSwitch,
            onChange: (value) {
              setState(() {
              isSelectedSwitch = value;
              if (value) {
        ThemeHelper().changeTheme("darkCode");
      } else {
        ThemeHelper().changeTheme("lightCode");
      }
            });
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnthumbsup(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildRowthumbsup(
              context,
              thumbsupThree: ImageConstant.imgThumbsUpAmber500,
              deleteaccount: "Change Mail",
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: _buildRowthumbsup(
              context,
              thumbsupThree: ImageConstant.imgThumbsUpRed500,
              deleteaccount: "Delete Account",
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: _buildRowthumbsup(
              context,
              thumbsupThree: ImageConstant.imgSettingsPrimary,
              deleteaccount: "Logout",
            ),
          ),

           SizedBox(
            width: double.maxFinite,
            child: _buildRowthumbsup(
              context,
              deleteaccount: "Terms & Conditions",
            ),
          ),
          
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 12.h),
             child: GestureDetector(
               onTap: () {
                Navigator.push(
                 context,
                 MaterialPageRoute(
                            builder: (context) => PrivacyPolicyScreen(),
                          ),
               );
             },

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Privacy Policy",
                    style: CustomTextStyles.titleSmallGray70001
                    
                  ),
                  
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnerrorcontainer,
                  height: 24.h,
                  width: 24.h,
                )
              ],
            ),
           ),
          ),
           SizedBox(height: 12.h)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowchangepasswo(
    BuildContext context, {
    required String changepassword,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 10.h),
      decoration: AppDecoration.outlineOnPrimaryContainer3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            changepassword,
            style: CustomTextStyles.titleSmallIndigo900.copyWith(
              color: appTheme.indigo900,
            ),
          ),
          GestureDetector(
          onTap: () {
            if (changepassword == "Edit Profile") {
              Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfileScreen(),
                          ),
                         );
            } else if (changepassword == "Change Password") {
              Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangePasswordScreen(),
                          ),
                         );
            }
          },
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.h,
            width: 24.h,
           ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowthumbsup(
    BuildContext context, {
    String? thumbsupThree,
    required String deleteaccount,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 10.h),
      decoration: AppDecoration.outlineOnPrimaryContainer3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: thumbsupThree,
            height: 20.h,
            width: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              deleteaccount,
              style: deleteaccount == "Logout"
                ? CustomTextStyles.titleSmallPrimary
                : deleteaccount == "Terms & Conditions"
                  ? CustomTextStyles.titleSmallGray70001
                  : CustomTextStyles.titleSmallRed500.copyWith(
                      color: appTheme.red500,
                  )
            ),
          ),
          Spacer(),
            GestureDetector(
          onTap: () {
            if (deleteaccount == "Change Mail") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ChangeMailScreen()),
              );
            } else if (deleteaccount == "Delete Account") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DeleteAccountBottomsheet()),
              );
            } else if (deleteaccount == "Logout") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogoutBottomsheet()),
              );
            }else if (deleteaccount == "Terms & Conditions") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TermsAndConditionsScreen()),
              );
            }
          },
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnerrorcontainer,
            height: 24.h,
            width: 24.h,
          ),
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

