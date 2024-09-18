import 'package:bloc_test/bloc_test.dart';
import 'package:e_book_store/core/networking/api_result.dart';
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
import 'package:e_book_store/features/home/presentation/controllers/home_cubit.dart';
import 'package:e_book_store/features/home/presentation/controllers/home_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_cubit_test.mocks.dart';

@GenerateMocks([HomeRepository])
void main() {
  late MockHomeRepository mockHomeRepository;
  late HomeCubit homeCubit;
  late BooksModel booksModel;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    homeCubit = HomeCubit(mockHomeRepository);
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

  blocTest<HomeCubit, HomeState>(
    'emits [freeBookLoadingState, freeBookLoadedState] when getFreeBooks is successful',
    build: () {
      when(mockHomeRepository.getFreeBooks(any, any))
          .thenAnswer((_) async => ApiResult.success(booksModel));
      return homeCubit;
    },
    act: (cubit) => cubit.getFreeBooks("computer science", "free-ebooks"),
    expect: () => [
      const HomeState.freeBookLoadingState(),
      HomeState.freeBookLoadedState(booksModel),
    ],
  );

  blocTest<HomeCubit, HomeState>(
    'emits [freeBookLoadingState, freeBookErrorState] when getFreeBooks fails',
    build: () {
      when(mockHomeRepository.getFreeBooks(any, any))
          .thenAnswer((_) async => const ApiResult.failure("Error occurred"));
      return homeCubit;
    },
    act: (cubit) => cubit.getFreeBooks("computer science", "free-ebooks"),
    expect: () => [
      const HomeState.freeBookLoadingState(),
      const HomeState.freeBookErrorState("Error occurred"),
    ],
  );
}
