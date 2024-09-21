import '../../../../core/networking/api_result.dart';
import '../data_sources/home_remote_data_source.dart';
import '../models/books_model.dart';

abstract class HomeRepository {
  Future<ApiResult<BooksModel>> getFreeBooks(String query, String filtering);
}

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<ApiResult<BooksModel>> getFreeBooks(
      String query, String filtering) async {
    try {
      final response = await remoteDataSource.getFreeBooks(query, filtering);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
