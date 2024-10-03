import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_info.g.dart';

@JsonSerializable()
@HiveType(typeId: 12)
class SearchInfo {
  @JsonKey(name: "textSnippet")
  @HiveField(0)
  final String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) => _$SearchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SearchInfoToJson(this);
}