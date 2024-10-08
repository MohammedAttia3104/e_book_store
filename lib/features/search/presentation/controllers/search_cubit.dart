import 'package:bloc/bloc.dart';
import 'package:e_book_store/core/extensions/extensions.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/features/search/data/models/search_parameters.dart';
import 'package:e_book_store/features/search/data/repository/search_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepository searchRepository;
  int _currentPage = 0;
  bool _isFetching = false;

  SearchCubit(this.searchRepository) : super(const SearchState.initial());

  void searchAboutBooks(String textSearch, {String? orderBy, String? printType, String? langRestrict, String? filter}) async {
    if (_isFetching) return;
    _isFetching = true;
    emit(const SearchState.searchLoadingState());
    _currentPage = 0;
    final result = await searchRepository.getSearchedBooks(
      SearchParameters(
        query: textSearch,
        startIndex: _currentPage * 10,
        maxResults: 10,
        orderBy: orderBy,
        printType: printType,
        langRestrict: langRestrict,
        filter: filter,
      ),
    );
    result.when(success: (books) {
      if (books.totalItems == 0) {
        emit(const SearchState.searchEmptyState());
      } else {
        emit(SearchState.searchSuccessState(books: books.items!));
      }
    }, failure: (message) {
      emit(SearchState.searchFailureState(message: message));
    });
    _isFetching = false;
  }

  void loadMoreBooks(String textSearch, {String? orderBy, String? printType, String? langRestrict, String? filter}) async {
    if (_isFetching) return;
    _isFetching = true;
    final currentState = state;
    if (currentState is SearchSuccessState) {
      emit(SearchState.searchLoadingMoreState(books: currentState.books));
    }
    _currentPage++;
    final result = await searchRepository.getSearchedBooks(
      SearchParameters(
        query: textSearch,
        startIndex: _currentPage * 10,
        maxResults: 10,
        orderBy: orderBy,
        printType: printType,
        langRestrict: langRestrict,
        filter: filter,
      ),
    );
    result.when(success: (books) {
      if (currentState is SearchSuccessState) {
        emit(SearchState.searchSuccessState(
            books: List.from(currentState.books)..addAll(books.items!)));
      }
    }, failure: (message) {
      emit(SearchState.searchFailureState(message: message));
    });
    _isFetching = false;
  }
}