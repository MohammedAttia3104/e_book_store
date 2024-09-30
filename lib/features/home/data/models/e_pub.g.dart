// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'e_pub.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EpubAdapter extends TypeAdapter<Epub> {
  @override
  final int typeId = 7;

  @override
  Epub read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Epub(
      isAvailable: fields[0] as bool,
      acsTokenLink: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Epub obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.isAvailable)
      ..writeByte(1)
      ..write(obj.acsTokenLink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EpubAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Epub _$EpubFromJson(Map<String, dynamic> json) => Epub(
      isAvailable: json['isAvailable'] as bool,
      acsTokenLink: json['acsTokenLink'] as String?,
    );

Map<String, dynamic> _$EpubToJson(Epub instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'acsTokenLink': instance.acsTokenLink,
    };
