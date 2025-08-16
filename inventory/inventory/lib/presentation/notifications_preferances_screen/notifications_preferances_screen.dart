import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
//import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_switch.dart';
//import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NotificationsPreferancesScreen extends StatefulWidget {
  const NotificationsPreferancesScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsPreferancesScreen> createState() =>
      _NotificationsPreferancesScreenState();
}

class _NotificationsPreferancesScreenState
    extends State<NotificationsPreferancesScreen> {
  bool isSelectedEmail = false;
  bool isSelectedSMS = false;

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
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 10.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  Center(
                 child: Text(
                      "Manage the notifications you receive",
                         maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                       style: CustomTextStyles.titleMediumGray60001.copyWith(
                        height: 1.50, )
                      ),),
                   SizedBox(height: 20.h),     
                  _buildNotificationRow(context, "Email Notifications", isSelectedEmail, (val) {
                     setState(() {
                       isSelectedEmail = val;
                     });
                     
                }),
                  SizedBox(height: 12.h),
                _buildNotificationRow(context, "SMS Notifications", isSelectedSMS, (val) {
                  setState(() {
                    isSelectedSMS = val;
                  });
                  
                }),                
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
          top: 16.h,
          bottom: 16.h,
        ),
        onTap: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Manage Notifications",
      ),
    );
  }
   
  /// Section Widget
  Widget _buildNotificationRow(
    BuildContext context, String title, bool value, Function(bool) onChanged) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
      borderRadius: BorderRadiusStyle.roundedBorder10,
    ),
    width: double.maxFinite,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: CustomTextStyles.titleSmallOnErrorContainer,
                ),
                CustomSwitch(
                  value: value,
                  onChange: onChanged,
                )
              ],
            ),
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

