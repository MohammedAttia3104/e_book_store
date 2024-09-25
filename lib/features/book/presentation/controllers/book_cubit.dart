import 'package:bloc/bloc.dart';
import 'package:e_book_store/features/book/data/repository/book_details_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookDetailsRepository bookDetailsRepository;

  BookCubit(this.bookDetailsRepository) : super(const BookState.initial());

  void getBookDetails(String bookId) async {
    emit(const BookState.bookDetailsLoading());
    final bookDetails = await bookDetailsRepository.getBookDetails(bookId);
    bookDetails.when(
      success: (data) => emit(BookState.bookDetailsSuccess(data)),
      failure: (message) => emit(BookState.bookDetailsFailure(message)),
    );
  }

  void showCategoriesFromBook(String category) async {
    emit(const BookState.showCategoriesFromBookLoading());
    final booksFromCategory = await bookDetailsRepository.showCategoriesFromBook(category);
    booksFromCategory.when(
      success: (data) => emit(BookState.showCategoriesFromBookSuccess(data)),
      failure: (message) => emit(BookState.showCategoriesFromBookFailure(message)),
    );
  }
}
