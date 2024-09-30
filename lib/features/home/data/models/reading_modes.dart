import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reading_modes.g.dart';

@JsonSerializable()
@HiveType(typeId: 4)
class ReadingModes {
  @JsonKey(name: "text")
  @HiveField(0)
  final bool text;
  @JsonKey(name: "image")
  @HiveField(1)
  final bool image;

  ReadingModes({
    required this.text,
    required this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) => _$ReadingModesFromJson(json);
}