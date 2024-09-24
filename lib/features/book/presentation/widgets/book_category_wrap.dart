import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_cubit.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookCategoryWrap extends StatelessWidget {
  const BookCategoryWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'Computer',
      'Computer Science',
      'Math',
      'History',
      'Art'
    ];
    return Wrap(
      spacing: 10.w,
      runSpacing: 5.h,
      children: categories.map(
            (category) {
          return Flexible(
            child: BlocBuilder<AppThemeCubit, AppThemeState>(
              builder: (context, state) {
                final isDarkTheme = state is AppThemeDarkState;
                return Container(
                  alignment: Alignment.center,
                  width: MediaQuery
                      .sizeOf(context)
                      .width * 0.23,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: !isDarkTheme
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(
                      color: AppColors.mainBlue,
                      width: 2.r,
                    ),
                  ),
                  child: Text(
                    category,
                    style: AppStyles.font14BlueBold,
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          );
        },
      ).toList(),
    );
  }
}
