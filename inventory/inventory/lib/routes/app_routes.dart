import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/change_mail_screen/change_mail_screen.dart';
import '../presentation/change_password_screen/change_password_screen.dart';
import '../presentation/continue_with_phone_number_screen/continue_with_phone_number_screen.dart';
import '../presentation/create_profile_screen/create_profile_screen.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/notifications_preferances_screen/notifications_preferances_screen.dart';
import '../presentation/otp_verification_screen/otp_verification_screen.dart';
import '../presentation/sign_up_one_screen/sign_up_one_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/success_popup_screen/success_popup_screen.dart';
import '../presentation/verify_otp_screen/verify_otp_screen.dart';
import '../presentation/settings_page/settings_page.dart';
import '../presentation/terms_and _condition/terms_and_condition.dart';
import '../presentation/privacy_policy/privacy_policy.dart';
import '../presentation/new_mail/new_mail.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String continueWithPhoneNumberScreen =
      '/continue_with_phone_number_screen';

  static const String verifyOtpScreen = '/verify_otp_screen';

  static const String createProfileScreen = '/create_profile_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String notificationsPage = '/notifications_page';

  static const String notificationsTabContainerScreen =
      '/notifications_tab_container_screen';

  static const String settingsPage = '/settings_page';

  static const String termsandcondition = '/terms_and_condition';

  static const String privacypolicy = '/privacy_policy';

  static const String newmail = '/newmail';

  static const String passwordManagerScreen = '/password_manager_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationsPreferancesScreen =
      '/notifications_preferances_screen';

  static const String changeMailScreen = '/change_mail_screen';

  static const String successPopupScreen = '/success_popup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    continueWithPhoneNumberScreen: (context) => ContinueWithPhoneNumberScreen(),
    verifyOtpScreen: (context) => VerifyOtpScreen(),
    createProfileScreen: (context) => CreateProfileScreen(),
    signUpOneScreen: (context) => SignUpOneScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    otpVerificationScreen: (context) => OtpVerificationScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),  
    settingsPage: (context) => SettingsPage(),
    termsandcondition: (context) => TermsAndConditionsScreen(),
    privacypolicy :(context) => PrivacyPolicyScreen(),
    newmail :(context) => NewMailScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    notificationsPreferancesScreen: (context) =>
        NotificationsPreferancesScreen(),
    changeMailScreen: (context) => ChangeMailScreen(),
    successPopupScreen: (context) => SuccessPopupScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    
  };
}

