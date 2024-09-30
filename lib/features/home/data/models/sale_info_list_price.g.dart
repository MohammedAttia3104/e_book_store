// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_info_list_price.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaleInfoListPriceAdapter extends TypeAdapter<SaleInfoListPrice> {
  @override
  final int typeId = 11;

  @override
  SaleInfoListPrice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaleInfoListPrice(
      amount: fields[0] as double,
      currencyCode: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SaleInfoListPrice obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.currencyCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleInfoListPriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaleInfoListPrice _$SaleInfoListPriceFromJson(Map<String, dynamic> json) =>
    SaleInfoListPrice(
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String?,
    );

Map<String, dynamic> _$SaleInfoListPriceToJson(SaleInfoListPrice instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };
