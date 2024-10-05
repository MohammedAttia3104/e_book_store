import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/core/theming/font_weight_helper.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_love_button.dart';
import 'package:e_book_store/features/search/presentation/widgets/search_info_book_button.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../home/data/models/book_item_model.dart';

class SearchBookItem extends StatelessWidget {
  final BookItemModel book;

  const SearchBookItem({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.bookScreen, arguments: book.id),
      child: Container(
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.gray, width: 1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: FancyShimmerImage(
                  imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
                  errorWidget: const Center(child: Icon(Icons.error)),
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      image: DecorationImage(
                        image: imageProvider,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            horizontalSpace(8),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0).h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.volumeInfo?.title ?? 'N/A',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeightHelper.medium,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
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
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BookLoveButton(book: book),
                SearchInfoBookButton(book: book),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
