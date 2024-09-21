import 'package:bloc/bloc.dart';
import 'package:e_book_store/core/enums/theme_state.dart';
import 'package:e_book_store/core/helpers/shared_prefs_helper.dart';
import 'package:e_book_store/core/helpers/shared_prefs_keys.dart';

import 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(const AppThemeState.initial());

  void changeAppTheme(ThemeState state) {
    switch (state) {
      case ThemeState.light:
        SharedPrefHelper.setData(
            SharedPrefsKeys.themeModeKey, ThemeState.light.toString());
        emit(const AppThemeState.light());
        break;
      case ThemeState.dark:
        SharedPrefHelper.setData(
            SharedPrefsKeys.themeModeKey, ThemeState.dark.toString());
        emit(const AppThemeState.dark());
        break;
      case ThemeState.initial:
        if (SharedPrefHelper.getData(SharedPrefsKeys.themeModeKey) != null) {
          if (SharedPrefHelper.getData(SharedPrefsKeys.themeModeKey) ==
              ThemeState.light.toString()) {
            emit(const AppThemeState.light());
          } else {
            emit(const AppThemeState.dark());
          }
          break;
        }
    }
  }
}
