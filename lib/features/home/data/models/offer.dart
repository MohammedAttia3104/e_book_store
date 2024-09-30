import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offer.g.dart';

@JsonSerializable()
@HiveType(typeId: 8)
class Offer {
  @JsonKey(name: "finskyOfferType")
  @HiveField(0)
  final int finskyOfferType;
  @JsonKey(name: "listPrice")
  @HiveField(1)
  final OfferListPrice listPrice;
  @JsonKey(name: "retailPrice")
  @HiveField(2)
  final OfferListPrice retailPrice;

  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  Map<String, dynamic> toJson() => _$OfferToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 9)
class OfferListPrice {
  @JsonKey(name: "amountInMicros")
  @HiveField(0)
  final int? amountInMicros;
  @JsonKey(name: "currencyCode")
  @HiveField(1)
  final String? currencyCode;

  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });

  factory OfferListPrice.fromJson(Map<String, dynamic> json) => _$OfferListPriceFromJson(json);
}