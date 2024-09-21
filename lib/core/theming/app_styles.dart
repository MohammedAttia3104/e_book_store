import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.fontSecondaryLightColor,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font26WhiteMedium = TextStyle(
    fontSize: 26.sp,
    color: AppColors.primaryLightColor,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font20GrayRegular = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );

  static TextStyle font20LightGrayRegular = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.lightGray,
  );

  static TextStyle font20DarkBlueMedium = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.darkBlue,
  );
}
