import 'package:dio/dio.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/features/home/data/models/books_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

part 'book_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class BookRemoteDataSource {
  factory BookRemoteDataSource(Dio dio, {String baseUrl}) =
      _BookRemoteDataSource;

  @GET("${ApiConstants.booksEP}/{bookId}")
  Future<BookItemModel> getBookDetails(
    @Path('bookId') String bookId,
  );

  //https://www.googleapis.com/books/v1/volumes?q=subject:"Computers"
  @GET(ApiConstants.booksEP)
  Future<BooksModel> showCategoriesFromBook(
    @Query('q') String category,
  );
}