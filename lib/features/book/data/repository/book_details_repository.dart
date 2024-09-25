import '../../../../core/networking/api_result.dart';
import '../../../home/data/models/book_item_model.dart';
import '../data_source/book_remote_data_source.dart';

abstract  class BookDetailsRepository {
  Future<ApiResult<BookItemModel>> getBookDetails(String bookId);
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
}