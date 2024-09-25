import 'package:e_book_store/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';

class BookShareButton extends StatelessWidget {
  const BookShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        final isDarkTheme = state is AppThemeDarkState;
        return IconButton(
          icon: SvgPicture.asset(
            isDarkTheme ? Assets.svgsWhiteShare : Assets.svgsBlackShare,
          ),
          onPressed: () {},
        );
      },
    );
  }
}
