import 'package:json_annotation/json_annotation.dart';

part 'offer.g.dart';

@JsonSerializable()
class Offer {
  @JsonKey(name: "finskyOfferType")
  final int finskyOfferType;
  @JsonKey(name: "listPrice")
  final OfferListPrice listPrice;
  @JsonKey(name: "retailPrice")
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
class OfferListPrice {
  @JsonKey(name: "amountInMicros")
  final int? amountInMicros;
  @JsonKey(name: "currencyCode")
  final String? currencyCode;

  OfferListPrice({
    required this.amountInMicros,
    required this.currencyCode,
  });

  factory OfferListPrice.fromJson(Map<String, dynamic> json) => _$OfferListPriceFromJson(json);
}