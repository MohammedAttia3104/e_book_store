import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_cubit.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_state.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookReadPreviewsAndDownload extends StatelessWidget {
  const BookReadPreviewsAndDownload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        final isDarkTheme = state is AppThemeDarkState;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Read Previews',
                style: AppStyles.font16WhiteMedium.copyWith(
                  color: isDarkTheme
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                ),
              ),
            ),
            horizontalSpace(10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              onPressed: () {},
              child:  Icon(
                Icons.download,
                color: isDarkTheme ? AppColors.whiteColor : AppColors.blackColor,
              ),
            ),
          ],
        );
      },
    );
  }
}
