import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/data/models/book_item_model.dart';
import 'favorite_list_item.dart';

class FavoriteListView extends StatelessWidget {
  final List<BookItemModel> books;

  const FavoriteListView({required this.books, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0.h),
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return FavoriteListItem(book: book);
      },
    );
  }
}
