import 'package:e_book_store/features/home/presentation/widgets/recently_added_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';
import '../../../../core/utils/spacing.dart';
import 'home_app_bar.dart';
import 'home_search_view.dart';
import 'home_welcome_body.dart';

class HomeScreenSkeletonLoading extends StatelessWidget {
  const HomeScreenSkeletonLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(right: 16.0.w, left: 16.0.w, top: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                verticalSpace(30),
                const HomeWelcomeBody(),
                const HomeSearchView(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(30),
                    BlocBuilder<AppThemeCubit, AppThemeState>(
                      builder: (context, state) {
                        final isDarkTheme = state is AppThemeDarkState;
                        return Text(
                          'Recently Added',
                          style: AppStyles.font24BlackBold.copyWith(
                            color: isDarkTheme
                                ? AppColors.whiteColor
                                : AppColors.blackColor,
                          ),
                        );
                      },
                    ),
                    verticalSpace(20),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return const Skeletonizer(
                          child: RecentlyAddedBookItem(
                            itemImage: 'Loading..................',
                            itemTitle: 'Loading..................',
                            itemAuthor: ['Loading..................'],
                            itemDescription:
                                'Loading..........................\nLoading..........................\nLoading..........................',
                            itemId: 'Loading...',
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return verticalSpace(15);
                      },
                      itemCount: 5,
                    ),
                  ],
                ),
                verticalSpace(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
