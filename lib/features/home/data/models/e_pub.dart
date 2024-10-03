import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'e_pub.g.dart';

@JsonSerializable()
@HiveType(typeId: 7)
class Epub {
  @JsonKey(name: "isAvailable")
  @HiveField(0)
  final bool isAvailable;
  @JsonKey(name: "acsTokenLink")
  @HiveField(1)
  final String? acsTokenLink;

  Epub({
    required this.isAvailable,
    this.acsTokenLink,
  });

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);
}