part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;

  const factory FavoriteState.favoriteAddedSuccessfully(String bookId) =
      FavoriteAddedSuccessfully;

  const factory FavoriteState.favoriteRemovedSuccessfully(String bookId) =
      FavoriteRemovedSuccessfully;

  const factory FavoriteState.favoriteLoadedSuccessfully(
      List<BookItemModel> books) = FavoriteLoadedSuccessfully;
}
