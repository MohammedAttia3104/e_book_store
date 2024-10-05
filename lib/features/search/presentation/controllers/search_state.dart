part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.searchLoadingState() = SearchLoadingState;

  const factory SearchState.searchSuccessState({
    required List<BookItemModel> books,
  }) = SearchSuccessState;

  const factory SearchState.searchFailureState({
    required String message,
  }) = SearchFailureState;

  const factory SearchState.searchLoadingMoreState({
    required List<BookItemModel> books,
  }) = SearchLoadingMoreState;
}