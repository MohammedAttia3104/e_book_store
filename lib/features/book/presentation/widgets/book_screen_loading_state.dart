import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/widgets/expandable_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';
import '../../../../generated/assets.dart';

class BookScreenLoadingState extends StatelessWidget {
  const BookScreenLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> uniqueCategories = [
      'Loading...',
      'Loading...',
      'Loading...',
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
        actions: [
          BlocBuilder<AppThemeCubit, AppThemeState>(
            builder: (context, themeState) {
              final isDarkTheme = themeState is AppThemeDarkState;
              return IconButton(
                icon: SvgPicture.asset(
                  isDarkTheme ? Assets.svgsWhiteHeart : Assets.svgsBlackHeart,
                ),
                onPressed: () {},
              );
            },
          ),
          BlocBuilder<AppThemeCubit, AppThemeState>(
            builder: (context, themeState) {
              final isDarkTheme = themeState is AppThemeDarkState;
              return IconButton(
                icon: SvgPicture.asset(
                  isDarkTheme ? Assets.svgsWhiteShare : Assets.svgsBlackShare,
                ),
                onPressed: () {},
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Skeletonizer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FancyShimmerImage(
                    imageUrl: '',
                    errorWidget: const Icon(Icons.error),
                    height: 250.h,
                    width: MediaQuery.of(context).size.width * 0.4,
                    boxFit: BoxFit.contain,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        const Text('loading...'),
                        const Text('loading...'),
                        SizedBox(height: 5.h),
                        Wrap(
                          spacing: 10,
                          runSpacing: 5,
                          children: uniqueCategories.map(
                            (category) {
                              return BlocBuilder<AppThemeCubit, AppThemeState>(
                                builder: (context, state) {
                                  final isDarkTheme =
                                      state is AppThemeDarkState;
                                  return Container(
                                    alignment: Alignment.center,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      color: !isDarkTheme
                                          ? AppColors.whiteColor
                                          : AppColors.blackColor,
                                      borderRadius: BorderRadius.circular(20.r),
                                      border: Border.all(
                                        color: AppColors.mainBlue,
                                        width: 2.r,
                                      ),
                                    ),
                                    child: Text(
                                      category,
                                      style: AppStyles.font14BlueBold,
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                },
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(20),
            Skeletonizer(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Books Description',
                      style: TextStyle(fontSize: 24.sp),
                    ),
                    const Divider(color: Colors.grey, thickness: 1),
                    Text('episode: loading...' * 20),
                    SizedBox(height: 10.h),
                    const ExpandableText(text: '', maxLines: 6),
                  ],
                ),
              ),
            ),
            verticalSpace(20),
            Skeletonizer(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product Details', style: AppStyles.font24BlueBold),
                    const Divider(color: Colors.grey, thickness: 1),
                    verticalSpace(10),
                    Text('Publisher: Loading...' * 2),
                    verticalSpace(5),
                    Text('Publisher: Loading...' * 2),
                    verticalSpace(5),
                    Text('Publisher: Loading...' * 2),
                    verticalSpace(5),
                    Text('Publisher: Loading...' * 2),
                    verticalSpace(5),
                    Text('Publisher: Loading...' * 2),
                  ],
                ),
              ),
            ),
            verticalSpace(20),
            Skeletonizer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: AppColors.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Read Previews',
                      style: AppStyles.font16WhiteMedium.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: AppColors.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.download,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
