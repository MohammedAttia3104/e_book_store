// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_modes.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReadingModesAdapter extends TypeAdapter<ReadingModes> {
  @override
  final int typeId = 4;

  @override
  ReadingModes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReadingModes(
      text: fields[0] as bool,
      image: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ReadingModes obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReadingModesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadingModes _$ReadingModesFromJson(Map<String, dynamic> json) => ReadingModes(
      text: json['text'] as bool,
      image: json['image'] as bool,
    );

Map<String, dynamic> _$ReadingModesToJson(ReadingModes instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image': instance.image,
    };
