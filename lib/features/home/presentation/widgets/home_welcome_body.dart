import 'package:e_book_store/core/theming/app_strings.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

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
          style: AppStyles.font16WhiteMedium,
        ),
        verticalSpace(4),
        Text(
          AppStrings.whatDoYouWantToReadTodayHome,
          style: AppStyles.font26WhiteMedium,
        ),
        verticalSpace(34),
      ],
    );
  }
}
