import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_strings.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/theming/font_weight_helper.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';

class HomeSearchView extends StatefulWidget {
  const HomeSearchView({super.key});

  @override
  State<HomeSearchView> createState() => _HomeSearchViewState();
}

class _HomeSearchViewState extends State<HomeSearchView> {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: searchController,
      hintText: AppStrings.search,
      validator: (value) {},
      hintStyle: AppStyles.font20GrayRegular,
      suffixIcon: Container(
        margin: const EdgeInsets.all(12).h,
        child: SvgPicture.asset(Assets.svgsMicrophone),
      ),
      prefixIcon: Container(
        margin: const EdgeInsets.all(12).h,
        child: SvgPicture.asset(Assets.svgsSearch),
      ),
      fillColorBackGround: AppColors.moreLightGray,
    );
  }
}
