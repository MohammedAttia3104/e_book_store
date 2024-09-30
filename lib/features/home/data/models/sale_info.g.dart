// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaleInfoAdapter extends TypeAdapter<SaleInfo> {
  @override
  final int typeId = 10;

  @override
  SaleInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaleInfo(
      country: fields[0] as String?,
      saleability: fields[1] as String?,
      isEbook: fields[2] as bool,
      listPrice: fields[3] as SaleInfoListPrice?,
      retailPrice: fields[4] as SaleInfoListPrice?,
      buyLink: fields[5] as String?,
      offers: (fields[6] as List?)?.cast<Offer>(),
    );
  }

  @override
  void write(BinaryWriter writer, SaleInfo obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.saleability)
      ..writeByte(2)
      ..write(obj.isEbook)
      ..writeByte(3)
      ..write(obj.listPrice)
      ..writeByte(4)
      ..write(obj.retailPrice)
      ..writeByte(5)
      ..write(obj.buyLink)
      ..writeByte(6)
      ..write(obj.offers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) => SaleInfo(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool,
      listPrice: json['listPrice'] == null
          ? null
          : SaleInfoListPrice.fromJson(
              json['listPrice'] as Map<String, dynamic>),
      retailPrice: json['retailPrice'] == null
          ? null
          : SaleInfoListPrice.fromJson(
              json['retailPrice'] as Map<String, dynamic>),
      buyLink: json['buyLink'] as String?,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SaleInfoToJson(SaleInfo instance) => <String, dynamic>{
      'country': instance.country,
      'saleability': instance.saleability,
      'isEbook': instance.isEbook,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
      'buyLink': instance.buyLink,
      'offers': instance.offers,
    };
