import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../delete_account_bottomsheet/delete_account_bottomsheet.dart';
import '../logout_bottomsheet/logout_bottomsheet.dart';



class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Continue with Phone Number",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.continueWithPhoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verify OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Terms and Conditions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.termsandcondition),
                        ),
                         _buildScreenTitle(
                          context,
                          screenTitle: "Privacy Policy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacypolicy),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "New Mail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.newmail),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.otpVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications Preferances",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.notificationsPreferancesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Setting page",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.settingsPage),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Mail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changeMailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Success Popup",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successPopupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delete Account - BottomSheet",
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context, DeleteAccountBottomsheet()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Logout - BottomSheet",
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context, LogoutBottomsheet()),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

