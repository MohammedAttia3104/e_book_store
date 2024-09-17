import 'package:json_annotation/json_annotation.dart';

part 'e_pub.g.dart';

@JsonSerializable()
class Epub {
  @JsonKey(name: "isAvailable")
  final bool isAvailable;
  @JsonKey(name: "acsTokenLink")
  final String? acsTokenLink;

  Epub({
    required this.isAvailable,
    this.acsTokenLink,
  });

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);
}