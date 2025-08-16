import 'dart:async';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';


class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  int secondsRemaining = 59;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer?.cancel();
    secondsRemaining = 59;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              Text(
                "We have sent an OTP to your Registered Mobile Number",
                style: CustomTextStyles.titleMediumGray60001,
              ),
              SizedBox(height: 84.h),
              _buildColumnotpview(context),
              SizedBox(height: 38.h),
              CustomElevatedButton(
                text: "Verify",
                onPressed: () {
                  // Add verification logic
                },
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  if (secondsRemaining == 0) {
                    startTimer();
                    // Trigger resend OTP API
                  }
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Didn’t receive OTP?",
                        style: CustomTextStyles.titleMediumBlack900_1,
                      ),
                      TextSpan(
                        text: " Send Again",
                        style: CustomTextStyles.titleMediumPrimary_1.copyWith(
                          color: secondsRemaining == 0
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

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
        onTap: () => onTapArrowleftone(context),
      ),
      centerTitle: true,
      title: AppbarTitle(text: "OTP Verification"),
    );
  }

  Widget _buildColumnotpview(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: CustomPinCodeTextField(
              context: context,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            "Resend 0:${secondsRemaining.toString().padLeft(2, '0')}",
            style: CustomTextStyles.titleSmallPrimary_1,
          )
        ],
      ),
    );
  }

  void onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
