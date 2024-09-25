import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_cubit.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_state.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_key_value_pairs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../home/data/models/book_item_model.dart';

class BookDetailsDataPart extends StatelessWidget {
  const BookDetailsDataPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        return state.maybeWhen(
          bookDetailsSuccess: (book) => _getBookDetails(book),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _getBookDetails(BookItemModel book) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Product Details',
          style: AppStyles.font24BlueBold,
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        verticalSpace(10),
        Row(
          children: [
            Text(
              'Publisher: ',
              style: AppStyles.font16GrayMedium,
            ),
            Text(
              book.volumeInfo.publisher ?? 'N/A',
              style: AppStyles.font16BlueMedium,
            ),
            horizontalSpace(4),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.mainBlue,
            ),
          ],
        ),
        verticalSpace(5),
        BookKeyAndValuePairs(
          pair: 'Published Date: ',
          value: [book.volumeInfo.publishedDate ?? 'N/A'],
        ),
        verticalSpace(5),
        BookKeyAndValuePairs(
          pair: 'Pages Number: ',
          value: [book.volumeInfo.pageCount.toString()],
        ),
        verticalSpace(5),
        Row(
          children: [
            Text(
              'Dimensions: ',
              style: AppStyles.font16GrayMedium,
            ),
            Text(
              '${book.volumeInfo.dimensions?.height ?? 'N/A'} x ${book.volumeInfo.dimensions?.width ?? 'N/A'} x ${book.volumeInfo.dimensions?.thickness ?? 'N/A'}',
              style: AppStyles.font16BlueMedium,
            ),
          ],
        ),
        verticalSpace(5),
        BookKeyAndValuePairs(
          pair: 'Author(s): ',
          value: book.volumeInfo.authors ?? ['N/A'],
        ),
      ],
    );
  }
}
