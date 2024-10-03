import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookSingleItemWithImageAndTitle extends StatelessWidget {
  final BookItemModel book;

  const BookSingleItemWithImageAndTitle({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.bookScreen, arguments: book.id);
      },
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.25,
        child: Column(
          children: [
            FancyShimmerImage(
              imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
              boxFit: BoxFit.cover,
              errorWidget: const Icon(Icons.error),
              width: MediaQuery.sizeOf(context).width * 0.25,
              height: 150.h,
              shimmerBackColor: Colors.greenAccent,
              shimmerBaseColor: Colors.greenAccent,
              shimmerHighlightColor: Colors.grey,
            ),
            verticalSpace(8),
            Text(
              book.volumeInfo?.title ?? 'N/A',
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}