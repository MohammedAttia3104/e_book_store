import 'package:bloc/bloc.dart';
import 'package:e_book_store/features/explore/data/repositories/explore_repository.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_state.dart';
part 'explore_cubit.freezed.dart';

class ExploreCubit extends Cubit<ExploreState> {
  final ExploreRepository exploreRepository;

  ExploreCubit(this.exploreRepository) : super(const ExploreState.initial());

  int _currentPage = 1; // This tracks the current page number
  bool isLoading = false;
  bool hasMoreData = true; // To check if more data is available

  Future<void> fetchExploredCategories({
    bool isPagination = false,
    required String category,
  }) async {
    if (isLoading) return; // Prevent multiple calls

    if (!isPagination) {
      _currentPage = 1; // Reset to page 1 if not a pagination call
      hasMoreData = true; // Reset the flag
      emit(const ExploreState.exploreCategoryLoading());
    }

    if (!hasMoreData) return; // If no more data, return early

    isLoading = true;

    final result = await exploreRepository.fetchBooksByCategory(
      category,
      (_currentPage - 1) * 10, // Calculate startIndex based on page
    );

    result.when(
      success: (books) {
        if (books.items == null || books.items!.isEmpty) {
          hasMoreData = false; // No more data available
          isLoading = false;
          return;
        }

        if (isPagination && state is ExploreCategorySuccess) {
          _currentPage++;
          final currentBooks = (state as ExploreCategorySuccess).books;
          final updatedBooks = currentBooks + books.items!; // Append new books
          emit(ExploreCategorySuccess(books: updatedBooks));
        } else {
          emit(ExploreCategorySuccess(books: books.items!));
        }
      },
      failure: (message) {
        emit(ExploreCategoryFailure(message: message));
      },
    );

    isLoading = false;
  }
}
