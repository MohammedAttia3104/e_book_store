import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enums/theme_states.dart';
import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';

class HomeThemeSwitchBlocBuilder extends StatelessWidget {
  const HomeThemeSwitchBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        bool isLightTheme = state.maybeWhen(
          orElse: () => false,
          light: () => true,
          dark: () => false,
        );
        return Switch.adaptive(
          value: isLightTheme,
          onChanged: (value) {
            BlocProvider.of<AppThemeCubit>(context).changeAppTheme(
              value ? ThemeState.light : ThemeState.dark,
            );
          },
        );
      },
    );
  }
}
