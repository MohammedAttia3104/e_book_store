import 'package:e_book_store/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/controllers/app_theme_cubit.dart';
import '../../../../core/theming/controllers/app_theme_state.dart';
import '../../../favorite/presentation/controllers/favorite_cubit.dart';
import '../../../home/data/models/book_item_model.dart';

class BookLoveButton extends StatelessWidget {
  final BookItemModel book;

  const BookLoveButton({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, themeState) {
        final isDarkTheme = themeState is AppThemeDarkState;
        return BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (context, favoriteState) {
            final isFavorite = favoriteState.maybeWhen(
              favoriteLoadedSuccessfully: (books) => books.any((b) => b.id == book.id),
              orElse: () => false,
            );

            return IconButton(
              icon: SvgPicture.asset(
                isFavorite
                    ? (isDarkTheme
                        ? Assets.svgsWhiteHeart
                        : Assets.svgsBlackHeart)
                    : (isDarkTheme
                        ? Assets.svgsWhiteHeart
                        : Assets.svgsBlackHeart),
                color: isFavorite ? Colors.red : null,
              ),
              onPressed: () {
                if (isFavorite) {
                  context
                      .read<FavoriteCubit>()
                      .removeFavorite(book.id.toString());
                } else {
                  context.read<FavoriteCubit>().addFavorite(book);
                }
              },
            );
          },
        );
      },
    );
  }
}
