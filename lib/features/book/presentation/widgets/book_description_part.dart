import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_cubit.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_state.dart';
import 'package:e_book_store/features/book/presentation/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../home/data/models/book_item_model.dart';

class BookDescriptionPart extends StatelessWidget {
  const BookDescriptionPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        return state.maybeWhen(
          bookDetailsSuccess: (book) {
            return book.volumeInfo?.description != null &&
                    book.volumeInfo!.description!.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(10),
                      Text(
                        'Description',
                        style: AppStyles.font24BlueBold,
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      verticalSpace(10),
                      ExpandableText(
                        text: book.volumeInfo!.description!,
                        maxLines: 7,
                      ),
                    ],
                  )
                : const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
