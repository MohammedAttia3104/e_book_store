import 'package:e_book_store/core/theming/app_strings.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_cubit.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';

class HomeWelcomeBody extends StatelessWidget {
  const HomeWelcomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.welcomeBackHome + AppStrings.userName,
          style: AppStyles.font16SecondaryMedium,
        ),
        verticalSpace(4),
        BlocBuilder<AppThemeCubit, AppThemeState>(
          builder: (context, state) {
            final isDarkTheme = state is AppThemeDarkState;
            return Text(
              AppStrings.whatDoYouWantToReadTodayHome,
              style: AppStyles.font26BlackMedium.copyWith(
                color:
                    isDarkTheme ? AppColors.whiteColor : AppColors.blackColor,
              ),
            );
          },
        ),
        verticalSpace(34),
      ],
    );
  }
}
