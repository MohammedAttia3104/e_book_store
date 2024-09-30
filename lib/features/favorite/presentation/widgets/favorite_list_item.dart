import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';
import '../../../home/data/models/book_item_model.dart';
import '../controllers/favorite_cubit.dart';
import '../favorite_screen.dart';
import 'favorite_book_card.dart';

class FavoriteListItem extends StatelessWidget {
  final BookItemModel book;

  const FavoriteListItem({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(book.id.toString()),
      confirmDismiss: (direction) async {
        return await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Confirm"),
              content:
                  const Text("Are you sure you want to dismiss this item?"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text("Dismiss"),
                ),
              ],
            );
          },
        );
      },
      onDismissed: (direction) {
        context.read<FavoriteCubit>().removeFavorite(book.id.toString());
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${book.volumeInfo.title} dismissed')),
        );
      },
      background: _buildDismissBackground(Alignment.centerLeft),
      secondaryBackground: _buildDismissBackground(Alignment.centerRight),
      child: FavoriteBookCard(book: book),
    );
  }

  Widget _buildDismissBackground(Alignment alignment) {
    return Container(
      alignment: alignment,
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Container(
        width: 100.w,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0.r),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesDemo2),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
