// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OfferAdapter extends TypeAdapter<Offer> {
  @override
  final int typeId = 8;

  @override
  Offer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Offer(
      finskyOfferType: fields[0] as int,
      listPrice: fields[1] as OfferListPrice,
      retailPrice: fields[2] as OfferListPrice,
    );
  }

  @override
  void write(BinaryWriter writer, Offer obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.finskyOfferType)
      ..writeByte(1)
      ..write(obj.listPrice)
      ..writeByte(2)
      ..write(obj.retailPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfferAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OfferListPriceAdapter extends TypeAdapter<OfferListPrice> {
  @override
  final int typeId = 9;

  @override
  OfferListPrice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OfferListPrice(
      amountInMicros: fields[0] as int?,
      currencyCode: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, OfferListPrice obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.amountInMicros)
      ..writeByte(1)
      ..write(obj.currencyCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfferListPriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
