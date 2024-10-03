import 'package:e_book_store/features/book/presentation/controllers/book_cubit.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_state.dart';
import 'package:e_book_store/features/category/presentation/widgets/category_screen_loading_state.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_single_item_with_image_and_title.dart';

class CategoryScreenBodyBuilder extends StatefulWidget {
  final String category;

  const CategoryScreenBodyBuilder({super.key, required this.category});

  @override
  _CategoryScreenBodyBuilderState createState() =>
      _CategoryScreenBodyBuilderState();
}

class _CategoryScreenBodyBuilderState extends State<CategoryScreenBodyBuilder> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<BookCubit>().showCategoriesFromBook(category: widget.category);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      context.read<BookCubit>().showCategoriesFromBook(
        isPagination: true,
        category: widget.category,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: state.maybeWhen(
                showCategoriesFromBookSuccess: (books) =>
                    _buildCategorySuccessState(books, state is ShowCategoriesFromBookLoading),
                showCategoriesFromBookLoading: () =>
                const CategoryScreenLoadingState(),
                orElse: () => const SizedBox.shrink(),
              ),
            ),
            if (state is ShowCategoriesFromBookLoading && state is! ShowCategoriesFromBookSuccess)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
          ],
        );
      },
    );
  }

  Widget _buildCategorySuccessState(List<BookItemModel> books, bool isLoading) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 16.w, left: 16.w),
        child: Center(
          child: Column(
            children: [
              Wrap(
                spacing: 15.w,
                runSpacing: 10.h,
                children: List.generate(
                  books.length,
                      (index) {
                    return BookSingleItemWithImageAndTitle(book: books[index]);
                  },
                ),
              ),
              if (isLoading)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}