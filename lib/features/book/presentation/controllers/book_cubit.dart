import 'package:bloc/bloc.dart';
import 'package:e_book_store/core/extensions/extensions.dart';
import 'package:e_book_store/features/book/data/repository/book_details_repository.dart';
import 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  final BookDetailsRepository bookDetailsRepository;

  BookCubit(this.bookDetailsRepository) : super(const BookState.initial());

  int _currentPage = 1; // This tracks the current page number
  bool isLoading = false;
  bool hasMoreData = true; // To check if more data is available

  void getBookDetails(String bookId) async {
    emit(const BookState.bookDetailsLoading());
    final bookDetails = await bookDetailsRepository.getBookDetails(bookId);
    bookDetails.when(
      success: (data) => emit(BookState.bookDetailsSuccess(data)),
      failure: (message) => emit(BookState.bookDetailsFailure(message)),
    );
  }

  Future<void> showCategoriesFromBook({
    bool isPagination = false,
    required String category,
  }) async {
    if (isLoading) return; // Prevent multiple calls

    if (!isPagination) {
      _currentPage = 1; // Reset to page 1 if not a pagination call
      hasMoreData = true; // Reset the flag
      emit(const BookState.showCategoriesFromBookLoading());
    }

    if (!hasMoreData) return; // If no more data, return early

    isLoading = true;

    final result = await bookDetailsRepository.showCategoriesFromBook(
      category,
      20, // Set maxResults to 20
      (_currentPage - 1) * 20,
    );

    result.when(
      success: (books) {
        if (books.isNullOrEmptyList()) {
          hasMoreData = false;
        } else {
          _currentPage++;
          if (isPagination && state is ShowCategoriesFromBookSuccess) {
            final currentState = state as ShowCategoriesFromBookSuccess;
            emit(BookState.showCategoriesFromBookSuccess(
                currentState.data + books));
          } else {
            emit(BookState.showCategoriesFromBookSuccess(books));
          }
        }
      },
      failure: (message) {
        emit(BookState.showCategoriesFromBookFailure(message));
      },
    );

    isLoading = false;
  }
}
