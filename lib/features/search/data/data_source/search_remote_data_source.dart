import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../home/data/models/books_model.dart';

part 'search_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SearchRemoteDataSource {
  factory SearchRemoteDataSource(Dio dio, {String baseUrl}) =
      _SearchRemoteDataSource;

  @GET(ApiConstants.booksEP)
  Future<BooksModel> searchBooks(
    @Query('q') String query,
    @Query('startIndex') int startIndex,
    @Query('maxResults') int maxResults,
    @Query('orderBy') String? orderBy,
    @Query('printType') String? printType,
    @Query('langRestrict') String? langRestrict,
    @Query('filter') String? filter,
  );
}
