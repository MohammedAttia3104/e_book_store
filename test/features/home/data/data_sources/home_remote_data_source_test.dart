import 'package:dio/dio.dart';
import 'package:e_book_store/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:e_book_store/features/home/data/models/access_info.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/features/home/data/models/books_model.dart';
import 'package:e_book_store/features/home/data/models/dimensions.dart';
import 'package:e_book_store/features/home/data/models/e_pub.dart';
import 'package:e_book_store/features/home/data/models/image_links.dart';
import 'package:e_book_store/features/home/data/models/reading_modes.dart';
import 'package:e_book_store/features/home/data/models/sale_info.dart';
import 'package:e_book_store/features/home/data/models/search_info.dart';
import 'package:e_book_store/features/home/data/models/volume_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_remote_data_source_test.mocks.dart';

@GenerateMocks([HomeRemoteDataSource])
void main() {
  late MockHomeRemoteDataSource mockHomeRemoteDataSource;
  late Dio mockDio;
  late BooksModel booksModel;
  String subject = "subject:Computer";
  String orderBy = "newest";
  int maxResults = 10;
  int startIndex = 0;

  setUp(() {
    mockHomeRemoteDataSource = MockHomeRemoteDataSource();
    mockDio = Dio();
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
            dimensions: Dimensions(
              height: "",
              width: "",
              thickness: "",
            ),
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

  test('return books model with query filtering to get freeBooks', () async {
    when(mockHomeRemoteDataSource.getRecentlyAddedComputerBooks(
            subject, startIndex, maxResults, orderBy))
        .thenAnswer((_) async => booksModel);

    final result = await mockHomeRemoteDataSource.getRecentlyAddedComputerBooks(
      subject,
      startIndex,
      maxResults,
      orderBy,
    );

    expect(result, booksModel);
  });
}
