import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 40.h,
          leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(
               left: 16.h,
              top: 16.h,
              bottom: 16.h,),
            onTap: () => Navigator.pop(context),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "Privacy Policy",
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A privacy policy is a document in which the data owner (the person or entity that owns a website/app) outlines the methods, approach and in some cases legal justifications, of its processing of personal data.Privacy policies should also outline the rights that users have in relation to the processing of their data.",
                style: theme.textTheme.bodyMedium,
              ),             
              //SizedBox(height: 12.h),
              Text(
                "Privacy policies typically include information about:",
                style: theme.textTheme.bodyMedium,
              ),
              //SizedBox(height: 8.h),
              Text("•  The type of data collected", style: theme.textTheme.bodyMedium),
              Text("•  How and why it is used", style: theme.textTheme.bodyMedium),
              Text("•  With whom it is shared", style: theme.textTheme.bodyMedium),
              Text("•  How it is protected ", style: theme.textTheme.bodyMedium),
              Text("•  users rights over this data.", style: theme.textTheme.bodyMedium),
              //SizedBox(height: 16.h),
              Text(
                "The most important reason you need a privacy policy is to comply with data privacy laws.",
                style: theme.textTheme.bodyMedium,
              ),
              //SizedBox(height: 12.h),
              Text(
                "Under the vast majority of legislations including the GDPR in Europe and most US State Laws, if you’re processing personal data you’re generally required to make disclosures related to your data processing activities via a comprehensive privacy notice.",
                style: theme.textTheme.bodyMedium,
              ),
              //SizedBox(height: 12.h),
              Text(
                "As a result, this legal document is required by law in various jurisdictions and must meet disclosure and transparency requirements.",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
