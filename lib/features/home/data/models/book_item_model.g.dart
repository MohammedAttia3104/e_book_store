// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookItemModelAdapter extends TypeAdapter<BookItemModel> {
  @override
  final int typeId = 0;

  @override
  BookItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookItemModel(
      kind: fields[0] as String?,
      id: fields[1] as String?,
      etag: fields[2] as String?,
      selfLink: fields[3] as String?,
      volumeInfo: fields[4] as VolumeInfo?,
      saleInfo: fields[5] as SaleInfo?,
      accessInfo: fields[6] as AccessInfo?,
    );
  }

  @override
  void write(BinaryWriter writer, BookItemModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.kind)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.etag)
      ..writeByte(3)
      ..write(obj.selfLink)
      ..writeByte(4)
      ..write(obj.volumeInfo)
      ..writeByte(5)
      ..write(obj.saleInfo)
      ..writeByte(6)
      ..write(obj.accessInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookItemModel _$BookItemModelFromJson(Map<String, dynamic> json) =>
    BookItemModel(
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      etag: json['etag'] as String?,
      selfLink: json['selfLink'] as String?,
      volumeInfo: json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: json['saleInfo'] == null
          ? null
          : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
      accessInfo: json['accessInfo'] == null
          ? null
          : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookItemModelToJson(BookItemModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'id': instance.id,
      'etag': instance.etag,
      'selfLink': instance.selfLink,
      'volumeInfo': instance.volumeInfo,
      'saleInfo': instance.saleInfo,
      'accessInfo': instance.accessInfo,
    };
