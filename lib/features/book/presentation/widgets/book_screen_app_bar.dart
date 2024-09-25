import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_love_button.dart';
import 'package:e_book_store/features/book/presentation/widgets/book_share_button.dart';
import 'package:flutter/material.dart';

class BookScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BookScreenAppBar({
    super.key,
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
      actions: const [
        BookLoveButton(),
        BookShareButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
