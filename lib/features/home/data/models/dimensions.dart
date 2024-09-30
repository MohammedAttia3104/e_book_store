import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dimensions.g.dart';

@JsonSerializable()
@HiveType(typeId: 6)
class Dimensions {
  @JsonKey(name: "height")
  @HiveField(0)
  final String? height;
  @JsonKey(name: "width")
  @HiveField(1)
  final String? width;
  @JsonKey(name: "thickness")
  @HiveField(2)
  final String? thickness;

  Dimensions({
    required this.height,
    required this.width,
    required this.thickness,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);

  Map<String, dynamic> toJson() => _$DimensionsToJson(this);
}