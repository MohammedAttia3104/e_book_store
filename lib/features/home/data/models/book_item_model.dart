import 'package:e_book_store/features/home/data/models/sale_info.dart';
import 'package:e_book_store/features/home/data/models/volume_info.dart';
import 'package:json_annotation/json_annotation.dart';

import 'access_info.dart';

part 'book_item_model.g.dart';

@JsonSerializable()
class BookItemModel {
  @JsonKey(name: "kind")
  final String? kind;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "etag")
  final String? etag;
  @JsonKey(name: "selfLink")
  final String? selfLink;
  @JsonKey(name: "volumeInfo")
  final VolumeInfo volumeInfo;
  @JsonKey(name: "saleInfo")
  final SaleInfo saleInfo;
  @JsonKey(name: "accessInfo")
  final AccessInfo accessInfo;

  // @JsonKey(name: "searchInfo")
  // final SearchInfo searchInfo;

  BookItemModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    // required this.searchInfo,
  });

  factory BookItemModel.fromJson(Map<String, dynamic> json) =>
      _$BookItemModelFromJson(json);
}
