import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_state.freezed.dart';

@freezed
class BookState with _$BookState {
  const factory BookState.initial() = _Initial;

  const factory BookState.bookDetailsLoading() = BookDetailsLoading;

  const factory BookState.bookDetailsSuccess(BookItemModel data) = BookDetailsSuccess;

  const factory BookState.bookDetailsFailure(String message) =
      BookDetailsFailure;

  const factory BookState.showCategoriesFromBookLoading() = ShowCategoriesFromBookLoading;

  const factory BookState.showCategoriesFromBookSuccess(List<BookItemModel> data) = ShowCategoriesFromBookSuccess;

  const factory BookState.showCategoriesFromBookFailure(String message) = ShowCategoriesFromBookFailure;
}
