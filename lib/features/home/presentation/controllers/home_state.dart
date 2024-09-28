import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/books_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.recentlyAddedBooksLoadingState() = RecentlyAddedBooksLoadingState;
  const factory HomeState.recentlyAddedBooksSuccessState(BooksModel books) = RecentlyAddedBooksSuccessState;
  const factory HomeState.recentlyAddedBooksErrorState(String message) = RecentlyAddedBooksErrorState;

}