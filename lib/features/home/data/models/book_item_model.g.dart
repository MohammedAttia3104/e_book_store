// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookItemModel _$BookItemModelFromJson(Map<String, dynamic> json) =>
    BookItemModel(
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      etag: json['etag'] as String?,
      selfLink: json['selfLink'] as String?,
      volumeInfo:
          VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
      accessInfo:
          AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
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
