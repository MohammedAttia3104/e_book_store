import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/books_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.freeBookLoadingState() = FreeBookLoadingState;
  const factory HomeState.freeBookLoadedState(BooksModel books) = FreeBookLoadedState;
  const factory HomeState.freeBookErrorState(String message) = FreeBookErrorState;

}
