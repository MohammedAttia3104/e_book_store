import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/core/routing/app_router.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_cubit.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_state.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_cubit.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_state.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookCategoryWrap extends StatelessWidget {
  const BookCategoryWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        return state.maybeWhen(
          bookDetailsLoading: () => const SizedBox.shrink(),
          bookDetailsSuccess: (BookItemModel book) =>
              _getBookCategorySuccessData(book),
          bookDetailsFailure: (message) => const SizedBox.shrink(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Wrap _getBookCategorySuccessData(BookItemModel book) {
    List<String>? loadedCategories = book.volumeInfo.categories;
    List<String>? categories = loadedCategories;
    final uniqueCategories = categories
        ?.map((category) => category.split(' / ').first)
        .toSet()
        .toList();
    return Wrap(
      spacing: 10.w,
      runSpacing: 5.h,
      children: uniqueCategories!.map(
        (category) {
          return BlocBuilder<AppThemeCubit, AppThemeState>(
            builder: (context, state) {
              final isDarkTheme = state is AppThemeDarkState;
              return GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.categoryScreen, arguments: category);
                },
                child: Container(
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
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
