import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_love_button.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_share_button.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:flutter/material.dart';

class BookScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BookItemModel book;

  const BookScreenAppBar({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          context.pop();
        },
      ),
      actions: [
        BookLoveButton(book: book),
        const BookShareButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
