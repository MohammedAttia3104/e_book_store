import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'offer.dart';
import 'sale_info_list_price.dart';

part 'sale_info.g.dart';

@JsonSerializable()
@HiveType(typeId: 10)
class SaleInfo {
  @JsonKey(name: "country")
  @HiveField(0)
  final String? country;
  @JsonKey(name: "saleability")
  @HiveField(1)
  final String? saleability;
  @JsonKey(name: "isEbook")
  @HiveField(2)
  final bool isEbook;
  @JsonKey(name: "listPrice")
  @HiveField(3)
  final SaleInfoListPrice? listPrice;
  @JsonKey(name: "retailPrice")
  @HiveField(4)
  final SaleInfoListPrice? retailPrice;
  @JsonKey(name: "buyLink")
  @HiveField(5)
  final String? buyLink;
  @JsonKey(name: "offers")
  @HiveField(6)
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

  factory SaleInfo.fromJson(Map<String, dynamic> json) => _$SaleInfoFromJson(json);
}