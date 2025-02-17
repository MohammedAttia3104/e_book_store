import 'package:e_book_store/core/enums/theme_states.dart';
import 'package:e_book_store/core/helpers/shared_prefs_helper.dart';
import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/shared_prefs_keys.dart';

class AppStyles {
  static TextStyle font16SecondaryMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.fontSecondaryLightColor,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font20Bold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font26BlackMedium = TextStyle(
    fontSize: 26.sp,
    color: AppColors.blackColor,
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

  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.blackColor,
  );

  static TextStyle font20BlackBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.blackColor,
  );

  static TextStyle font16BlueMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.mainBlue,
  );

  static TextStyle font14BlueBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainBlue,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainBlue,
  );

  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );

  static TextStyle font16GrayBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.gray,
  );
}
