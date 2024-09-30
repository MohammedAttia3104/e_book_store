import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sale_info_list_price.g.dart';

@JsonSerializable()
@HiveType(typeId: 11)
class SaleInfoListPrice {
  @JsonKey(name: "amount")
  @HiveField(0)
  final double amount;
  @JsonKey(name: "currencyCode")
  @HiveField(1)
  final String? currencyCode;

  SaleInfoListPrice({
    required this.amount,
    required this.currencyCode,
  });

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) => _$SaleInfoListPriceFromJson(json);
}