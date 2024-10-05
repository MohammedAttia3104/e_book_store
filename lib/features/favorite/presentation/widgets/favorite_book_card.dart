import 'package:e_book_store/core/extensions/extensions.dart';
import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/spacing.dart';
import '../../../home/data/models/book_item_model.dart';

class FavoriteBookCard extends StatelessWidget {
  final BookItemModel book;

  const FavoriteBookCard({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: listTileSide,
      child: InkWell(
        onTap: () {
          context.pushNamed(
            Routes.bookScreen,
            arguments: book.id,
          );
        },
        child: Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FancyShimmerImage(
                imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
                width: 150.w,
                height: 200.h,
                boxFit: BoxFit.cover,
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<AppThemeCubit, AppThemeState>(
                      builder: (context, state) {
                        final isDarkTheme = state is AppThemeDarkState;
                        return Text(
                          book.volumeInfo?.title ?? 'No Title',
                          style: AppStyles.font24BlackBold.copyWith(
                            fontSize: 20.sp,
                            color: isDarkTheme
                                ? AppColors.whiteColor
                                : AppColors.blackColor,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        );
                      },
                    ),
                    verticalSpace(4),
                    if (book.volumeInfo?.authors?.isNotEmpty ?? false)
                      Text(
                        'by ${book.volumeInfo?.authors?.first ?? 'N/A'}',
                        style: AppStyles.font16GrayBold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}