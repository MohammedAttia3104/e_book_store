import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../home/data/models/books_model.dart';

part 'explore_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ExploreRemoteDataSource {
  factory ExploreRemoteDataSource(Dio dio, {String baseUrl}) =
      _ExploreRemoteDataSource;

  @GET(ApiConstants.booksEP)
  Future<BooksModel> fetchBooksByCategory(
    @Query('q') String subject,
    @Query('startIndex') int startIndex,
    @Query('maxResults') int maxResults,
    @Query('orderBy') String orderBy,
    @Query('filter') String filter,
  );
}
