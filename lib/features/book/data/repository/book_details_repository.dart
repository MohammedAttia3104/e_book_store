import 'package:e_book_store/core/networking/api_result.dart';
import '../../../home/data/models/book_item_model.dart';
import '../data_source/book_remote_data_source.dart';

abstract class BookDetailsRepository {
  Future<ApiResult<BookItemModel>> getBookDetails(String bookId);

  Future<ApiResult<List<BookItemModel>>> showCategoriesFromBook(
      String category,
      int maxResults,
      int startIndex,
      );
}

class BookDetailsRepositoryImpl implements BookDetailsRepository {
  final BookRemoteDataSource bookRemoteDataSource;

  BookDetailsRepositoryImpl({required this.bookRemoteDataSource});

  @override
  Future<ApiResult<BookItemModel>> getBookDetails(String bookId) async {
    try {
      final bookDetails = await bookRemoteDataSource.getBookDetails(bookId);
      return ApiResult.success(bookDetails);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  @override
  Future<ApiResult<List<BookItemModel>>> showCategoriesFromBook(
      String category,
      int maxResults,
      int startIndex,
      ) async {
    try {
      final booksFromCategory = await bookRemoteDataSource.showCategoriesFromBook(category, maxResults, startIndex);
      if (booksFromCategory.items == null || booksFromCategory.items!.isEmpty) {
        return const ApiResult.failure('Books from category are null');
      }
      return ApiResult.success(booksFromCategory.items ?? []);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}