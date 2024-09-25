import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_cubit.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_state.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_category_wrap.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_cover_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';
import '../../../home/data/models/book_item_model.dart';

class BookScreenCoverAndData extends StatelessWidget {
  const BookScreenCoverAndData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          bookDetailsLoading: () => const SizedBox.shrink(),
          bookDetailsSuccess: (BookItemModel book) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookCoverImage(
                  imageUrl: book.volumeInfo.imageLinks.thumbnail ?? "",
                ),
                horizontalSpace(12),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(15),
                      BlocBuilder<AppThemeCubit, AppThemeState>(
                        builder: (context, state) {
                          final isDarkTheme = state is AppThemeDarkState;
                          return Text(
                            book.volumeInfo.title ?? '',
                            style: AppStyles.font24BlackBold.copyWith(
                              color: isDarkTheme
                                  ? AppColors.whiteColor
                                  : AppColors.blackColor,
                            ),
                          );
                        },
                      ),
                      Text(
                        book.volumeInfo.authors?.first ?? '',
                        style: AppStyles.font16GrayMedium,
                      ),
                      verticalSpace(5),
                      const BookCategoryWrap(),
                    ],
                  ),
                ),
              ],
            );
          },
          bookDetailsFailure: (String message) => const SizedBox.shrink(),
        );
      },
    );
  }
}
