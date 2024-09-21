// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      error: ApiErrorModelError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

ApiErrorModelError _$ApiErrorModelErrorFromJson(Map<String, dynamic> json) =>
    ApiErrorModelError(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ErrorElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiErrorModelErrorToJson(ApiErrorModelError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'errors': instance.errors,
    };

ErrorElement _$ErrorElementFromJson(Map<String, dynamic> json) => ErrorElement(
      message: json['message'] as String,
      domain: json['domain'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$ErrorElementToJson(ErrorElement instance) =>
    <String, dynamic>{
      'message': instance.message,
      'domain': instance.domain,
      'reason': instance.reason,
    };
