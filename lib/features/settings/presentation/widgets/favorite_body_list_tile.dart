import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/features/favorite/presentation/controllers/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants.dart';

class FavoriteBodyListTile extends StatelessWidget {
  const FavoriteBodyListTile({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return ListTile(
          shape: listTileSide,
          onTap: () {
            context.pushNamed(Routes.favoriteScreen);
          },
          leading: Icon(
            Icons.favorite_border,
            size: 36.r,
          ),
          title: Text(
            'Favorites',
            style: AppStyles.font20Bold,
          ),
          subtitle: Text(
            '${context.read<FavoriteCubit>().favoriteBooks.length} items',
          ),
        );
      },
    );
  }
}
