import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/explore/presentation/explore_screen.dart';
import '../../../features/home/presentation/home_screen.dart';
import '../../../features/settings/presentation/settings_screen.dart';

part 'bottom_nav_bar_state.dart';
part 'bottom_nav_bar_cubit.freezed.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarState.initial());

  int selectedBottomNavBarIndex = 0;

  List<Widget> layoutPages = const [
    HomeScreen(),
    ExploreScreen(),
    SettingsScreen(),
  ];

  void updateBottomNavBarIndex(int index) {
    selectedBottomNavBarIndex = index;
    emit(BottomNavBarState.changeBottomNavBarIndexState(index));
  }
}
