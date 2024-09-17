import 'package:json_annotation/json_annotation.dart';

part 'reading_modes.g.dart';

@JsonSerializable()
class ReadingModes {
  @JsonKey(name: "text")
  final bool text;
  @JsonKey(name: "image")
  final bool image;

  ReadingModes({
    required this.text,
    required this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) => _$ReadingModesFromJson(json);
}
