import 'package:dio/dio.dart';
import 'package:e_book_store/core/networking/api_result.dart';
import 'package:e_book_store/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:e_book_store/features/home/data/models/access_info.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/features/home/data/models/books_model.dart';
import 'package:e_book_store/features/home/data/models/e_pub.dart';
import 'package:e_book_store/features/home/data/models/image_links.dart';
import 'package:e_book_store/features/home/data/models/reading_modes.dart';
import 'package:e_book_store/features/home/data/models/sale_info.dart';
import 'package:e_book_store/features/home/data/models/search_info.dart';
import 'package:e_book_store/features/home/data/models/volume_info.dart';
import 'package:e_book_store/features/home/data/repositories/home_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../data_sources/home_remote_data_source_test.mocks.dart';

@GenerateMocks([HomeRemoteDataSource])
void main() {
  late MockHomeRemoteDataSource mockHomeRemoteDataSource;
  late HomeRepository homeRepository;
  late BooksModel booksModel;
  const String subject = "subject:Computer";
  const String orderBy = "newest";
  int maxResults = 10;
  int startIndex = 0;

  setUp(() {
    mockHomeRemoteDataSource = MockHomeRemoteDataSource();
    homeRepository = HomeRepositoryImpl(
      remoteDataSource: mockHomeRemoteDataSource,
    );
    booksModel = BooksModel(
      kind: "books#volumes",
      totalItems: 550,
      items: [
        BookItemModel(
          kind: "books#volume",
          id: "kGXRzbS3UO0C",
          etag: "ZOMT0XQO96g",
          selfLink: "https://www.googleapis.com/books/v1/volumes/kGXRzbS3UO0C",
          volumeInfo: VolumeInfo(
            title: "Computer Science Illuminated",
            authors: ["Nell B. Dale", "John Lewis"],
            publisher: "Jones & Bartlett Learning",
            publishedDate: "2007",
            description: "ii",
            readingModes: ReadingModes(
              text: false,
              image: false,
            ),
            pageCount: 500,
            printType: "BOOK",
            categories: ["Computers"],
            maturityRating: "",
            allowAnonLogging: false,
            contentVersion: "0.3.5.0.preview.1",
            imageLinks: ImageLinks(smallThumbnail: "", thumbnail: ""),
            language: "",
            previewLink: "",
            infoLink: "",
            canonicalVolumeLink: "canonicalVolumeLink",
          ),
          saleInfo: SaleInfo(
            country: "EG",
            saleability: "",
            isEbook: false,
          ),
          accessInfo: AccessInfo(
            country: "EG",
            viewAbility: "PARTIAL",
            embeddable: true,
            publicDomain: false,
            textToSpeechPermission: "ALLOWED",
            epub: Epub(
              isAvailable: false,
            ),
            pdf: Epub(
              isAvailable: false,
            ),
            webReaderLink: "",
            accessViewStatus: "",
            quoteSharingAllowed: false,
          ),
          // searchInfo: SearchInfo(
          //   textSnippet: "",
          // ),
        ),
      ],
    );
  });

  test("Get Free Books should return Success with Books Model", () async {
    when(mockHomeRemoteDataSource.getRecentlyAddedComputerBooks(
            subject, startIndex, maxResults, orderBy))
        .thenAnswer((_) async => booksModel);

    final ApiResult<BooksModel> result =
        await homeRepository.getRecentlyAddedComputerBooks(
      RecentlyAddedBooksParameters(
        subject: subject,
        startIndex: startIndex,
        maxResults: maxResults,
        orderBy: orderBy,
      ),
    );

    final success = result as Success<BooksModel>;

    expect(result, isA<ApiResult<BooksModel>>());
    expect(success.data, booksModel);
  });

  test("Get Free Books should return Failure on error", () async {
    final DioError dioError = DioError(
      requestOptions: RequestOptions(path: "path"),
      response: Response(
        requestOptions: RequestOptions(path: "path"),
        statusCode: 404,
      ),
    );

    when(mockHomeRemoteDataSource.getRecentlyAddedComputerBooks(
            subject, startIndex, maxResults, orderBy))
        .thenThrow(dioError);

    final ApiResult<BooksModel> result = await homeRepository
        .getRecentlyAddedComputerBooks(RecentlyAddedBooksParameters(
      subject: subject,
      startIndex: startIndex,
      maxResults: maxResults,
      orderBy: orderBy,
    ));

    final failure = result as Failure<BooksModel>;

    expect(result, isA<ApiResult<BooksModel>>());
    expect(failure.message, isNotNull);
  });
}
