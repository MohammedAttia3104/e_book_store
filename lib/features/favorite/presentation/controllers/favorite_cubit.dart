import 'package:bloc/bloc.dart';
import 'package:e_book_store/core/utils/constants.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(const FavoriteState.initial());

  List<BookItemModel> favoriteBooks = [];

  void addFavorite(BookItemModel book) {
    favoriteBooks.add(book);
    Hive.box<BookItemModel>(kBookItemBox).put(book.id, book);
    emit(FavoriteState.favoriteAddedSuccessfully(book.id!));
    emit(FavoriteState.favoriteLoadedSuccessfully(favoriteBooks));
  }

  void removeFavorite(String bookId) {
    favoriteBooks.removeWhere((bookModel) => bookModel.id == bookId);
    Hive.box<BookItemModel>(kBookItemBox).delete(bookId);
    emit(FavoriteState.favoriteRemovedSuccessfully(bookId));
    emit(FavoriteState.favoriteLoadedSuccessfully(favoriteBooks));
  }

  void getFavoriteBooks() {
    final box = Hive.box<BookItemModel>(kBookItemBox);
    favoriteBooks = box.values.toList();
    emit(FavoriteState.favoriteLoadedSuccessfully(favoriteBooks));
  }

  void toggleFavorite(BookItemModel book) {
    if (favoriteBooks.any((bookModel) => bookModel.id == book.id)) {
      favoriteBooks.remove(book);
      debugPrint("Favorite Book * ${book.volumeInfo?.title} * Removed");
      favoriteBooks.removeWhere((bookModel) => bookModel.id == book.id);
      Hive.box<BookItemModel>(kBookItemBox).delete(book.id);
    } else {
      favoriteBooks.add(book);
      debugPrint("Favorite Book * ${book.volumeInfo?.title} * Added");
      Hive.box<BookItemModel>(kBookItemBox).put(book.id, book);
    }
    emit(FavoriteState.favoriteLoadedSuccessfully(favoriteBooks));
  }
}