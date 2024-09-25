import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_category_wrap.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_cover_image.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_description_part.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_details_data_part.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_read_previews_and_download.dart';
import 'package:e_book_store/features/book/presentation/widgets/expandable_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_styles.dart';

import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';

class BookScreenLoadingState extends StatelessWidget {
  const BookScreenLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> uniqueCategories = [
      'Loading...',
      'Loading...',
      'Loading...',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Skeletonizer(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FancyShimmerImage(
                imageUrl: '',
                errorWidget: const Icon(Icons.error),
                shimmerBaseColor: Colors.greenAccent,
                shimmerHighlightColor: Colors.grey,
                shimmerBackColor: Colors.greenAccent,
                height: 250,
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
                              final isDarkTheme = state is AppThemeDarkState;
                              return Container(
                                alignment: Alignment.center,
                                //width: MediaQuery.sizeOf(context).width * 0.23,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Books Description'),
              const Divider(color: Colors.grey, thickness: 1),
              SizedBox(height: 10.h),
              const ExpandableText(text: '', maxLines: 6),
            ],
          ),
        ),
        verticalSpace(20),
        Skeletonizer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Product Details', style: AppStyles.font24BlueBold),
              const Divider(color: Colors.grey, thickness: 1),
              verticalSpace(10),
              const Text('Publisher: Loading...'),
              verticalSpace(5),
              const Text('Published Date: Loading...'),
              verticalSpace(5),
              const Text('Pages Number: Loading...'),
              verticalSpace(5),
              const Text('Dimensions: Loading...'),
              verticalSpace(5),
              const Text('Author(s): Loading...'),
            ],
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
    );
  }
}