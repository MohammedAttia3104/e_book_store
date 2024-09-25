import 'package:e_book_store/features/home/presentation/controllers/home_cubit.dart';
import 'package:e_book_store/features/home/presentation/controllers/home_state.dart';
import 'package:e_book_store/features/home/presentation/widgets/home_recently_added_books.dart';
import 'package:e_book_store/features/home/presentation/widgets/home_screen_skeleton_loading.dart';
import 'package:e_book_store/features/home/presentation/widgets/home_search_view.dart';
import 'package:e_book_store/features/home/presentation/widgets/home_welcome_body.dart';
import 'package:e_book_store/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            recentlyAddedBooksLoadingState: () =>
                const HomeScreenSkeletonLoading(),
            recentlyAddedBooksSuccessState: (books) {
              return SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 16.0.w, left: 16.0.w, top: 24.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HomeAppBar(),
                        verticalSpace(30),
                        const HomeWelcomeBody(),
                        const HomeSearchView(),
                        const HomeRecentlyAddedBooks(),
                        verticalSpace(30),
                      ],
                    ),
                  ),
                ),
              );
            },
            recentlyAddedBooksErrorState: (message) {
              return Center(
                child: Text(message),
              );
            },
          );
        },
      ),
    );
  }
}
