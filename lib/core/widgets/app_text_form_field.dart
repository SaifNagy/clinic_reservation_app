import 'package:clinic_reservation_app/core/theming/app_colors.dart';
import 'package:clinic_reservation_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? constPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;

  const AppTextFormField(
      {super.key,
      this.constPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: constPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.w),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.mainBlue, width: 1.3),
                borderRadius: BorderRadius.circular(16),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.lighterGrey, width: 1.3),
                borderRadius: BorderRadius.circular(16),
              ),
          hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: AppColors.moreLightGrey,
          filled: true),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMeduim,
    );
  }
}
