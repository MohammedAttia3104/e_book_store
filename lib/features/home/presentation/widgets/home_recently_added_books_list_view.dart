import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/features/home/presentation/widgets/recently_added_book_item.dart';
import 'package:flutter/material.dart';

class HomeRecentlyAddedBooksListView extends StatelessWidget {
  List<BookItemModel> books = [];

  HomeRecentlyAddedBooksListView({
    super.key,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return RecentlyAddedBookItem(
          itemImage: books[index].volumeInfo.imageLinks.thumbnail,
          itemTitle: books[index].volumeInfo.title,
          itemAuthor: books[index].volumeInfo.authors,
          itemDescription: books[index].volumeInfo.description,
          itemId: books[index].id,
        );
      },
      separatorBuilder: (context, index) {
        return verticalSpace(15);
      },
      itemCount: books.length,
    );
  }
}
