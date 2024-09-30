// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dimensions.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DimensionsAdapter extends TypeAdapter<Dimensions> {
  @override
  final int typeId = 6;

  @override
  Dimensions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Dimensions(
      height: fields[0] as String?,
      width: fields[1] as String?,
      thickness: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Dimensions obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.height)
      ..writeByte(1)
      ..write(obj.width)
      ..writeByte(2)
      ..write(obj.thickness);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DimensionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) => Dimensions(
      height: json['height'] as String?,
      width: json['width'] as String?,
      thickness: json['thickness'] as String?,
    );

Map<String, dynamic> _$DimensionsToJson(Dimensions instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'thickness': instance.thickness,
    };
