import 'package:e_book_store/features/home/data/models/book_item_model.dart';

import '../../../../core/networking/api_result.dart';
import '../data_sources/home_remote_data_source.dart';
import '../models/books_model.dart';

abstract class HomeRepository {
  Future<ApiResult<List<BookItemModel>>> getRecentlyAddedComputerBooks(
    RecentlyAddedBooksParameters parameters,
  );
}

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<ApiResult<List<BookItemModel>>> getRecentlyAddedComputerBooks(
      RecentlyAddedBooksParameters parameters) async {
    try {
      final response = await remoteDataSource.getRecentlyAddedComputerBooks(
        parameters.subject,
        parameters.startIndex!,
        parameters.maxResults,
        parameters.orderBy,
      );
      return ApiResult.success(response.items!);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}

class RecentlyAddedBooksParameters {
  final String subject;
  int? startIndex;
  final int maxResults;
  final String orderBy;

  RecentlyAddedBooksParameters({
    required this.subject,
    required this.startIndex,
    required this.maxResults,
    required this.orderBy,
  });
}
