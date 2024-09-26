part of 'bottom_nav_bar_cubit.dart';

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState.initial() = _Initial;

  const factory BottomNavBarState.changeBottomNavBarIndexState(int index) = ChangeBottomNavBarIndexState;
}
