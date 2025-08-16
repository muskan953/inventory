import 'package:flutter/material.dart';
import 'package:inventory/presentation/continue_with_phone_number_screen/continue_with_phone_number_screen.dart';
import 'package:inventory/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:inventory/presentation/sign_up_screen/sign_up_screen.dart';
import '../../core/app_export.dart';
import '../../domain/googleauth/google_auth_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
//import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import '../terms_and _condition/terms_and_condition.dart';


// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool checkbox = false;
  bool ispasswordvisible = false;


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
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildColumnpleaseent(context),
                    SizedBox(height: 14.h),
                    _buildColumnemail(context),
                    SizedBox(height: 14.h),
                    _buildColumnpassword(context),
                    SizedBox(height: 14.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        children: [
                          _buildCheckbox(context),
                          SizedBox(height: 20.h),
                           CustomElevatedButton(
                           text: "Login",
                           onPressed: () {
                          if (_formKey.currentState!.validate()) {  
                       if (!checkbox) {
                      ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                      content: Text("Please accept Terms & Conditions"),
                      duration: Duration(seconds: 2),
                      ),
                      );
                     } else {
                     // ✅ All good → proceed with login
                     print("Logging in...");
                    }
                          }
                   },
                   ),
                          SizedBox(height: 12.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 22.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Divider(),
                                ),
                                SizedBox(width: 8.h),
                                Text(
                                  "or",
                                  style: theme.textTheme.bodyLarge,
                                ),
                                SizedBox(width: 8.h),
                                Expanded(
                                  child: Divider(),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          CustomOutlinedButton(
                            height: 44.h,
                            text: "Continue with Google",
                            margin: EdgeInsets.symmetric(horizontal: 46.h),
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 10.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSocialIcons,
                                height: 20.h,
                                width: 20.h,
                              ),
                            ),
                            buttonStyle: CustomButtonStyles.outlineBlueGray,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumBlack900_2,
                            onPressed: () {},
                          ),
                          SizedBox(height: 16.h),
                          CustomOutlinedButton(
                            height: 44.h,
                            text: "Continue with Mobile",
                            margin: EdgeInsets.symmetric(horizontal: 46.h),
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 10.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgPhone,
                                height: 20.h,
                                width: 20.h,
                              ),
                            ),
                            buttonStyle: CustomButtonStyles.outlineBlueGray,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumBlack900_2,
                            onPressed: () {
                              Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContinueWithPhoneNumberScreen(),
                          ),
                         );
                            },
                          ),
                          SizedBox(height: 110.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Don’t have an account?",
                                  style: CustomTextStyles.bodySmallOnPrimary,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "Sign-up",
                                  style: theme.textTheme.bodySmall?.copyWith(
                                   decoration: TextDecoration.none,   
                                ),
                                   recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                     builder: (context) => SignUpScreen(),
                                     ),
                                  );
                                },),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h)
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
        onTap: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Welcome Back!",
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnpleaseent(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Column(
        children: [
          Text(
            "Please enter your credentials to access your account",
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
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 12.h,
            ),
            borderDecoration:
                TextFormFieldStyleHelper.outlineOnPrimaryContainer,
            filled: true,
            fillColor: appTheme.whiteA700,
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
  Widget _buildColumnpassword(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Text(
                    "Password",
                    style: CustomTextStyles.titleSmallOnPrimary,
                  ),
                ),
                GestureDetector(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen(),
                          ),
                         );
  },
  child: Text(
    "Forgot Password?",
    style: CustomTextStyles.labelLargePrimary?.copyWith(
      decoration: TextDecoration.none,
    ),
  ),
)

              ],
            ),
          ),
          CustomTextFormField(
            controller: passwordController,
            obscureText: !ispasswordvisible,
            textInputAction: TextInputAction.done,
             suffix: Padding(
            padding: EdgeInsets.only(right: 4.h), // 🔹 moves icon to the left
    child: IconButton(
    icon: Icon(
      ispasswordvisible ? Icons.visibility : Icons.visibility_off,
      size: 28,
    ),
    onPressed: () {
      setState(() {
        ispasswordvisible = !ispasswordvisible;
      });
    },
  ),),
            
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration:
                TextFormFieldStyleHelper.outlineOnPrimaryContainer,
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
          )
        ],
      ),
    );
  }

  /// Section Widget
/// Section Widget
Widget _buildCheckbox(BuildContext context) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        children: [
          Checkbox(
            value: checkbox,
            onChanged: (value) {
              setState(() {
                checkbox = value!;
              });
              
              
            },
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Agree to the ",
                    style: CustomTextStyles.titleSmallOnPrimary,
                  ),
                  TextSpan(
                    text: "Terms & Conditions",
                    style: CustomTextStyles.labelLargePrimary?.copyWith(
                      
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TermsAndConditionsScreen(),
                          ),
                         );
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}




  onTapContinuewith(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}

