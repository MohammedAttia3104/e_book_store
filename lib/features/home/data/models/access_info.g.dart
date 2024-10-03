// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccessInfoAdapter extends TypeAdapter<AccessInfo> {
  @override
  final int typeId = 5;

  @override
  AccessInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccessInfo(
      country: fields[0] as String?,
      viewAbility: fields[1] as String?,
      embeddable: fields[2] as bool,
      publicDomain: fields[3] as bool,
      textToSpeechPermission: fields[4] as String?,
      epub: fields[5] as Epub,
      pdf: fields[6] as Epub,
      webReaderLink: fields[7] as String?,
      accessViewStatus: fields[8] as String?,
      quoteSharingAllowed: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, AccessInfo obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.country)
      ..writeByte(1)
      ..write(obj.viewAbility)
      ..writeByte(2)
      ..write(obj.embeddable)
      ..writeByte(3)
      ..write(obj.publicDomain)
      ..writeByte(4)
      ..write(obj.textToSpeechPermission)
      ..writeByte(5)
      ..write(obj.epub)
      ..writeByte(6)
      ..write(obj.pdf)
      ..writeByte(7)
      ..write(obj.webReaderLink)
      ..writeByte(8)
      ..write(obj.accessViewStatus)
      ..writeByte(9)
      ..write(obj.quoteSharingAllowed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccessInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessInfo _$AccessInfoFromJson(Map<String, dynamic> json) => AccessInfo(
      country: json['country'] as String?,
      viewAbility: json['viewability'] as String?,
      embeddable: json['embeddable'] as bool,
      publicDomain: json['publicDomain'] as bool,
      textToSpeechPermission: json['textToSpeechPermission'] as String?,
      epub: Epub.fromJson(json['epub'] as Map<String, dynamic>),
      pdf: Epub.fromJson(json['pdf'] as Map<String, dynamic>),
      webReaderLink: json['webReaderLink'] as String?,
      accessViewStatus: json['accessViewStatus'] as String?,
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool,
    );

Map<String, dynamic> _$AccessInfoToJson(AccessInfo instance) =>
    <String, dynamic>{
      'country': instance.country,
      'viewability': instance.viewAbility,
      'embeddable': instance.embeddable,
      'publicDomain': instance.publicDomain,
      'textToSpeechPermission': instance.textToSpeechPermission,
      'epub': instance.epub,
      'pdf': instance.pdf,
      'webReaderLink': instance.webReaderLink,
      'accessViewStatus': instance.accessViewStatus,
      'quoteSharingAllowed': instance.quoteSharingAllowed,
    };
