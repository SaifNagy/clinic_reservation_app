import 'package:clinic_reservation_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13Grey2Regular,
          ),
          TextSpan(
            text: ' Terms & Conditions     ',
            style: TextStyles.font13DarkBlueMeduim,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font13Grey2Regular.copyWith(
              height: 1.5.h,
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font13DarkBlueMeduim,
          )
        ],
      ),
    );
  }
}
