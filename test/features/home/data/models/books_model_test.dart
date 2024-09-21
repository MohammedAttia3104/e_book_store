import 'package:e_book_store/features/home/data/models/books_model.dart';
import 'package:e_book_store/features/home/data/models/e_pub.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TestBooksModel', () {
    late Map<String, dynamic> json;

    setUp(() => {
          json = {
            "kind": "books#volumes",
            "totalItems": 1,
            "items": [
              {
                "kind": "books#volume",
                "id": "1",
                "etag": "etag",
                "selfLink": "selfLink",
                "volumeInfo": {
                  "title": "Continuous API Management",
                  "authors": [
                    "Mehdi Medjaoui",
                    "Erik Wilde",
                    "Ronnie Mitra",
                    "Mike Amundsen"
                  ],
                  "publisher": "\"O'Reilly Media, Inc.\"",
                  "publishedDate": "2021-10-18",
                  "description":
                      "A lot of work is required to release an API, but the effort doesn't always pay off. Overplanning before an API matures is a wasted investment, while underplanning can lead to disaster. The second edition of this book provides maturity models for individual APIs and multi-API landscapes to help you invest the right human and company resources for the right maturity level at the right time. How do you balance the desire for agility and speed with the need for robust and scalable operations? Four experts show software architects, program directors, and product owners how to maximize the value of their APIs by managing them as products through a continuous lifecycle. Learn which API decisions you need to govern Design, deploy, and manage APIs using an API-as-a-product (AaaP) approach Examine 10 pillars that form the foundation of API product work Learn how the continuous improvement model governs changes throughout an APIâ??s lifetime Explore the five stages of a complete API product lifecycle Delve into team roles needed to design, build, and maintain your APIs Learn how to manage APIs published by your organization",
                  // "industryIdentifiers": [
                  //   {"type": "ISBN_13", "identifier": "9781098103491"},
                  //   {"type": "ISBN_10", "identifier": "1098103491"}
                  // ],
                  "readingModes": {"text": false, "image": true},
                  "pageCount": 360,
                  "printType": "BOOK",
                  "categories": ["Computers"],
                  "maturityRating": "NOT_MATURE",
                  "allowAnonLogging": false,
                  "contentVersion": "0.0.1.0.preview.1",
                  // "panelizationSummary": {
                  //   "containsEpubBubbles": false,
                  //   "containsImageBubbles": false
                  // },
                  "imageLinks": {
                    "smallThumbnail":
                        "http://books.google.com/books/content?id=JWlPEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
                    "thumbnail":
                        "http://books.google.com/books/content?id=JWlPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
                  },
                  "language": "en",
                  "previewLink":
                      "http://books.google.com.eg/books?id=JWlPEAAAQBAJ&printsec=frontcover&dq=api&hl=&cd=7&source=gbs_api",
                  "infoLink":
                      "http://books.google.com.eg/books?id=JWlPEAAAQBAJ&dq=api&hl=&source=gbs_api",
                  "canonicalVolumeLink":
                      "https://books.google.com/books/about/Continuous_API_Management.html?hl=&id=JWlPEAAAQBAJ"
                },
                "saleInfo": {
                  "country": "EG",
                  "saleability": "NOT_FOR_SALE",
                  "isEbook": false
                },
                "accessInfo": {
                  "country": "US",
                  "viewability": "PARTIAL",
                  "embeddable": true,
                  "publicDomain": false,
                  "textToSpeechPermission": "ALLOWED",
                  "epub": {"isAvailable": false},
                  "pdf": {"isAvailable": true},
                  "webReaderLink": "webReaderLink",
                  "accessViewStatus": "SAMPLE",
                  "quoteSharingAllowed": true
                },
                "searchInfo": {"textSnippet": "textSnippet"}
              }
            ]
          }
        });

    test('should return a valid model when fromJson is called', () {
      // Act
      final result = BooksModel.fromJson(json);

      // Assert
      expect(result, isA<BooksModel>());
      expect(result.items?.length, 1);
      expect(result.items?[0].kind, "books#volume");
      expect(result.items?[0].id, "1");

      expect(result.items?[0].volumeInfo.title, "Continuous API Management");
      expect(result.items?[0].volumeInfo.publisher, "\"O'Reilly Media, Inc.\"");
      expect(
        result.items?[0].volumeInfo.imageLinks.thumbnail,
        "http://books.google.com/books/content?id=JWlPEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
      );

      expect(result.items?[0].saleInfo.country, "EG");
      expect(result.items?[0].accessInfo.epub, isA<Epub>());
      expect(result.items?[0].accessInfo.pdf, isA<Epub>());
      // expect(result.items?[0].searchInfo.textSnippet, "textSnippet");
    });
  });
}
