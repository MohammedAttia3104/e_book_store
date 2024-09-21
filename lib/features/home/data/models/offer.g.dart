// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Offer _$OfferFromJson(Map<String, dynamic> json) => Offer(
      finskyOfferType: (json['finskyOfferType'] as num).toInt(),
      listPrice:
          OfferListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
      retailPrice:
          OfferListPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferToJson(Offer instance) => <String, dynamic>{
      'finskyOfferType': instance.finskyOfferType,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
    };

OfferListPrice _$OfferListPriceFromJson(Map<String, dynamic> json) =>
    OfferListPrice(
      amountInMicros: (json['amountInMicros'] as num?)?.toInt(),
      currencyCode: json['currencyCode'] as String?,
    );

Map<String, dynamic> _$OfferListPriceToJson(OfferListPrice instance) =>
    <String, dynamic>{
      'amountInMicros': instance.amountInMicros,
      'currencyCode': instance.currencyCode,
    };
