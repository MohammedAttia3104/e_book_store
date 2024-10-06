import 'package:e_book_store/core/networking/api_result.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/features/search/data/models/search_parameters.dart';

import '../data_source/search_remote_data_source.dart';

abstract class SearchRepository {
  Future<ApiResult<List<BookItemModel>>> getSearchedBooks(
      SearchParameters searchParameters);
}

class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDataSource searchRemoteDataSource;

  SearchRepositoryImpl(this.searchRemoteDataSource);

  @override
  Future<ApiResult<List<BookItemModel>>> getSearchedBooks(
      SearchParameters searchParameters) async {
    try {
      final books = await searchRemoteDataSource.searchBooks(
        searchParameters.query,
        searchParameters.startIndex,
        searchParameters.maxResults,
        searchParameters.orderBy,
        searchParameters.printType,
        searchParameters.langRestrict,
        searchParameters.filter,
      );
      return ApiResult.success(books.items!);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
