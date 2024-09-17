import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  @JsonKey(name: "error")
  final ApiErrorModelError error;

  ApiErrorModel({
    required this.error,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

@JsonSerializable()
class ApiErrorModelError {
  @JsonKey(name: "code")
  final int code;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "errors")
  final List<ErrorElement> errors;

  ApiErrorModelError({
    required this.code,
    required this.message,
    required this.errors,
  });

  factory ApiErrorModelError.fromJson(Map<String, dynamic> json) => _$ApiErrorModelErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelErrorToJson(this);
}

@JsonSerializable()
class ErrorElement {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "domain")
  final String domain;
  @JsonKey(name: "reason")
  final String reason;

  ErrorElement({
    required this.message,
    required this.domain,
    required this.reason,
  });

  factory ErrorElement.fromJson(Map<String, dynamic> json) => _$ErrorElementFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorElementToJson(this);
}
