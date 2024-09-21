// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) => BooksModel(
      kind: json['kind'] as String?,
      totalItems: (json['totalItems'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => BookItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BooksModelToJson(BooksModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'totalItems': instance.totalItems,
      'items': instance.items,
    };
