import 'package:e_book_store/features/book/presentation/controllers/book_cubit.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_state.dart';
import 'package:e_book_store/features/category/presentation/widgets/category_screen_loading_state.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_single_item_with_image_and_title.dart';

class CategoryScreenBodyBuilder extends StatelessWidget {
  const CategoryScreenBodyBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        return state.maybeWhen(
          showCategoriesFromBookSuccess: (books) =>
              _buildCategorySuccessState(books),
          showCategoriesFromBookLoading: () =>
              const CategoryScreenLoadingState(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildCategorySuccessState(List<BookItemModel> books) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 16.w, left: 16.w),
        child: Center(
          child: Wrap(
            spacing: 15.w,
            runSpacing: 10.h,
            children: List.generate(
              books.length,
              (index) {
                return BookSingleItemWithImageAndTitle(book: books[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
