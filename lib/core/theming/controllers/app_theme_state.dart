import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme_state.freezed.dart';

@freezed
class AppThemeState  with _$AppThemeState {
  const factory AppThemeState.initial() = _Initial;
  const factory AppThemeState.light() = AppThemeLightState;
  const factory AppThemeState.dark() = AppThemeDarkState;

}
