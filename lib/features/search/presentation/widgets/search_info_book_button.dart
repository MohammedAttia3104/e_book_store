import 'package:flutter/material.dart';

import '../../../home/data/models/book_item_model.dart';

class SearchInfoBookButton extends StatelessWidget {
  const SearchInfoBookButton({
    super.key,
    required this.book,
  });

  final BookItemModel book;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.link),
    );
  }
}
