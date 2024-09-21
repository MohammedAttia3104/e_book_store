import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/enums/theme_state.dart';
import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';
import '../../../../generated/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.svgsView,
        ),
        const Spacer(),
        BlocBuilder<AppThemeCubit, AppThemeState>(
          builder: (context, state) {
            bool isLightTheme = state.maybeWhen(
              orElse: () => false,
              light: () => true,
              dark: () => false,
            );
            return Switch.adaptive(
              value: isLightTheme ,
              onChanged: (value) {
                BlocProvider.of<AppThemeCubit>(context).changeAppTheme(
                  value ? ThemeState.light : ThemeState.dark,
                );
              },
            );
          },
        ),
        horizontalSpace(8),
        CircleAvatar(
          radius: 20.r,
          backgroundImage: const AssetImage(
            Assets.imagesDemo,
          ),
        ),
      ],
    );
  }
}
