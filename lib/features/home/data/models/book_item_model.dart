import 'package:e_book_store/features/home/data/models/sale_info.dart';
import 'package:e_book_store/features/home/data/models/volume_info.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import 'access_info.dart';

part 'book_item_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class BookItemModel {
  @JsonKey(name: "kind")
  @HiveField(0)
  final String? kind;
  @JsonKey(name: "id")
  @HiveField(1)
  final String? id;
  @JsonKey(name: "etag")
  @HiveField(2)
  final String? etag;
  @JsonKey(name: "selfLink")
  @HiveField(3)
  final String? selfLink;
  @JsonKey(name: "volumeInfo")
  @HiveField(4)
  final VolumeInfo? volumeInfo;
  @JsonKey(name: "saleInfo")
  @HiveField(5)
  final SaleInfo? saleInfo;
  @JsonKey(name: "accessInfo")
  @HiveField(6)
  final AccessInfo? accessInfo;

  BookItemModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
  });

  factory BookItemModel.fromJson(Map<String, dynamic> json) =>
      _$BookItemModelFromJson(json);
}