import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'books_model.g.dart';

@JsonSerializable()
class BooksModel {
  @JsonKey(name: "kind")
  final String? kind;
  @JsonKey(name: "totalItems")
  final int? totalItems;
  @JsonKey(name: "items")
  final List<BookItemModel>? items;

  BooksModel({
    this.kind,
    this.totalItems,
    this.items,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) => _$BooksModelFromJson(json);
}