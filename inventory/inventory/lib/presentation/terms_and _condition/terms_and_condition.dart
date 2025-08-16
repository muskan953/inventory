import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

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
            text: "Terms and Conditions",
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We can safely say that Terms and Conditions are meant to protect you and your business: they help handle potential problems arising or prevent them in the first place. Without it, it’s difficult for businesses to mount an adequate defense if sued or legally challenged over the use of their product or service.",
                style: theme.textTheme.bodyMedium,
                
              ),
              //SizedBox(height: 12.h),
              
              //SizedBox(height: 12.h),
              Text(
                "In fact, it is considered standard practice and remain a very important document for every business, from a blog owner to an e-commerce store, in order to be protected from potential liabilities.",
                style: theme.textTheme.bodyMedium,
              ),
              //SizedBox(height: 12.h),
              Text(
                "They are particularly crucial in cases of e-commerce stores because they contain legally required information related to conditions of sale and disclosures on methods of payment, shipping, delivery, withdrawals, and cancellation conditions etc.",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 16.h),
              Text(
                "Limitations of Liability",
                style: theme.textTheme.bodyMedium,
              ),
              //SizedBox(height: 8.h),
              Text(
                "Terms and Conditions take their logic in the following practical liabilities for things like:",
                style: theme.textTheme.bodyMedium,
              ),
              //SizedBox(height: 8.h),
              Text("  • Inaccuracies of content on your website/app", style: theme.textTheme.bodyMedium),
              Text("  • Viruses, related damage", style: theme.textTheme.bodyMedium),
              Text("  • Improper functionality", style: theme.textTheme.bodyMedium),
              //SizedBox(height: 20.h),
              Text(
                "Protection From Abusive Behavior",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
