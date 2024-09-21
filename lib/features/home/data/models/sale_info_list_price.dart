import 'package:json_annotation/json_annotation.dart';

part 'sale_info_list_price.g.dart';

@JsonSerializable()
class SaleInfoListPrice {
  @JsonKey(name: "amount")
  final double amount;
  @JsonKey(name: "currencyCode")
  final String? currencyCode;

  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) => _$SaleInfoListPriceFromJson(json);
}