import 'package:dio/dio.dart';
import 'package:e_book_store/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../models/books_model.dart';

part 'home_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeRemoteDataSource {
  factory HomeRemoteDataSource(Dio dio, {String baseUrl}) =
      _HomeRemoteDataSource;

  @GET(ApiConstants.booksEP)
  Future<BooksModel> getFreeBooks(
    @Query("q") String query,
    @Query("Filtering") String filtering,
  );
}
