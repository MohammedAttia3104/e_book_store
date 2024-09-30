part of 'explore_cubit.dart';

@freezed
class ExploreState with _$ExploreState {
  const factory ExploreState.initial() = _Initial;

  const factory ExploreState.exploreCategoryLoading() = ExploreCategoryLoading;

  const factory ExploreState.exploreCategorySuccess(
      {required List<BookItemModel> books}) = ExploreCategorySuccess;

  const factory ExploreState.exploreCategoryFailure({required String message}) =
      ExploreCategoryFailure;
}
