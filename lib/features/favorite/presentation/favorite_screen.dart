import 'package:e_book_store/features/favorite/presentation/widgets/favorite_app_bar.dart';
import 'package:e_book_store/features/favorite/presentation/widgets/favorite_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/favorite_cubit.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FavoriteCubit>().getFavoriteBooks();
    return Scaffold(
      appBar: const FavoriteAppBar(),
      body: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          return state.maybeWhen(
            favoriteLoadedSuccessfully: (books) {
              return FavoriteListView(books: books);
            },
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
