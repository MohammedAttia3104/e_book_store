import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_strings.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.searchScreen),
      child: AppTextFormField(
        controller: TextEditingController(),
        hintText: AppStrings.search,
        validator: (value) {},
        hintStyle: AppStyles.font20GrayRegular,
        disabledHintStyle: AppStyles.font20GrayRegular, // Ensure the same hint style when disabled
        suffixIcon: Container(
          margin: const EdgeInsets.all(12).h,
          child: SvgPicture.asset(Assets.svgsMicrophone),
        ),
        prefixIcon: Container(
          margin: const EdgeInsets.all(12).h,
          child: SvgPicture.asset(Assets.svgsSearch),
        ),
        fillColorBackGround: AppColors.moreLightGray,
        enabled: false,
      ),
    );
  }
}