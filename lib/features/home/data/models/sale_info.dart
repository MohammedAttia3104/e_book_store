import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'offer.dart';
import 'sale_info_list_price.dart';

part 'sale_info.g.dart';

@JsonSerializable()
class SaleInfo {
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "saleability")
  final String? saleability;
  @JsonKey(name: "isEbook")
  final bool isEbook;
  @JsonKey(name: "listPrice")
  final SaleInfoListPrice? listPrice;
  @JsonKey(name: "retailPrice")
  final SaleInfoListPrice? retailPrice;
  @JsonKey(name: "buyLink")
  final String? buyLink;
  @JsonKey(name: "offers")
  final List<Offer>? offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
}