import 'package:e_book_store/core/layout/app_bottom_nav_bar.dart';
import 'package:e_book_store/features/home/presentation/controllers/home_cubit.dart';
import 'package:e_book_store/features/home/presentation/controllers/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/bottom_nav_bar_cubit.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return state.maybeWhen(
          changeBottomNavBarIndexState: (index) {
            return Scaffold(
              body: IndexedStack(
                index: index,
                children: context.read<BottomNavBarCubit>().layoutPages,
              ),
              bottomNavigationBar: const AppBottomNavBar(),
            );
          },
          orElse: () {
            return Scaffold(
              body: IndexedStack(
                index:
                    context.read<BottomNavBarCubit>().selectedBottomNavBarIndex,
                children: context.read<BottomNavBarCubit>().layoutPages,
              ),
              bottomNavigationBar: const AppBottomNavBar(),
            );
          },
        );
      },
    );
  }
}
