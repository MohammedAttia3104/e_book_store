import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/home/data/models/books_model.dart';
import 'package:e_book_store/features/home/presentation/controllers/home_cubit.dart';
import 'package:e_book_store/features/home/presentation/widgets/recently_added_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/home_state.dart';

class HomeRecentlyAddedBooks extends StatelessWidget {
  const HomeRecentlyAddedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is RecentlyAddedBooksErrorState ||
          current is RecentlyAddedBooksLoadingState ||
          current is RecentlyAddedBooksSuccessState,
      builder: (context, state) {
        return state.when(
          initial: () {
            return _showRecentlyAddedBooksLoadingState();
          },
          recentlyAddedBooksLoadingState: () {
            return _showRecentlyAddedBooksLoadingState();
          },
          recentlyAddedBooksSuccessState: (BooksModel books) {
            return _showRecentlyAddedBooksData(books);
          },
          recentlyAddedBooksErrorState: (message) {
            return _showRecentlyAddedBooksErrorState(message);
          },
        );
      },
    );
  }

  Center _showRecentlyAddedBooksErrorState(String message) {
    return Center(
      child: Text(message),
    );
  }

  Center _showRecentlyAddedBooksLoadingState() {
    return const Center(child: CircularProgressIndicator());
  }

  Column _showRecentlyAddedBooksData(BooksModel books) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(30),
        Text(
          'Recently Added',
          style: AppStyles.font24BlackBold,
        ),
        verticalSpace(20),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return RecentlyAddedBookItem(
              itemImage: books.items?[index].volumeInfo.imageLinks.thumbnail,
              itemTitle: books.items?[index].volumeInfo.title,
              itemAuthor: books.items?[index].volumeInfo.authors,
              itemDescription: books.items?[index].volumeInfo.description,
            );
          },
          separatorBuilder: (context, index) {
            return verticalSpace(15);
          },
          itemCount: books.items?.length ?? 0,
        ),
      ],
    );
  }
}
