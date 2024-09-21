import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final void Function()? onEditingComplete;
  final Function(String?) validator;
  final InputBorder? focusBorder;
  final InputBorder? enableBorder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String hintText;
  final TextStyle? hintStyle;
  final Color? fillColorBackGround;
  final bool? isObscureText;

  const AppTextFormField({
    super.key,
    required this.controller,
    this.contentPadding,
    required this.hintText,
    this.fillColorBackGround,
    this.keyboardType,
    this.onEditingComplete,
    this.suffixIcon,
    this.hintStyle,
    this.isObscureText,
    required this.validator,
    this.focusBorder,
    this.enableBorder,
    this.focusNode, this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      onEditingComplete: onEditingComplete,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      validator: (value) {
        return validator(value);
      },
      obscureText: isObscureText ?? false,
      style: AppStyles.font20DarkBlueMedium,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
        hintText: hintText,
        prefixIcon: prefixIcon,
        hintStyle: hintStyle ?? AppStyles.font20GrayRegular,
        focusedBorder: focusBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: AppColors.mainBlue,
                width: 1.3.w,
              ),
            ),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: AppColors.lighterGray,
                width: 1.3.w,
              ),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3.w,
          ),
        ),
        filled: true,
        fillColor: fillColorBackGround ?? AppColors.moreLightGray,
        suffixIcon: suffixIcon,
      ),
    );
  }
}