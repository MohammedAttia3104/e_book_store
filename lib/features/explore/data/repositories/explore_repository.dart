import 'package:e_book_store/features/explore/data/data_sources/explore_remote_data_source.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/features/home/data/models/books_model.dart';

import '../../../../core/networking/api_result.dart';

abstract class ExploreRepository {
  Future<ApiResult<BooksModel>> fetchBooksByCategory(
    String category,
    int index,
  );
}

class ExploreRepositoryImpl implements ExploreRepository {
  ExploreRemoteDataSource exploreRemoteDataSource;

  ExploreRepositoryImpl({required this.exploreRemoteDataSource});

  @override
  Future<ApiResult<BooksModel>> fetchBooksByCategory(
    String category,
    int index,
  ) async {
    try {
      final response = await exploreRemoteDataSource.fetchBooksByCategory(
        category,
        index,
        10,
        'newest',
        'free-ebooks',
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
