import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_category_wrap.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_cover_image.dart';
import 'package:flutter/material.dart';

class BookScreenCoverAndData extends StatelessWidget {
  const BookScreenCoverAndData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BookCoverImage(
          imageUrl:
              "http://books.google.com/books/content?id=xtYhEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
        ),
        horizontalSpace(12),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(15),
              Text(
                'The Last Thing He Told Me',
                style: AppStyles.font24BlackBold,
              ),
              Text(
                'Laura Dave',
                style: AppStyles.font16GrayMedium,
              ),
              verticalSpace(5),
              const BookCategoryWrap(),
            ],
          ),
        ),
      ],
    );
  }
}
