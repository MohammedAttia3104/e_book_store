import 'package:json_annotation/json_annotation.dart';

part 'dimensions.g.dart';


@JsonSerializable()
class Dimensions {
  @JsonKey(name: "height")
  final String? height;
  @JsonKey(name: "width")
  final String? width;
  @JsonKey(name: "thickness")
  final String? thickness;

  Dimensions({
    required this.height,
    required this.width,
    required this.thickness,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);

  Map<String, dynamic> toJson() => _$DimensionsToJson(this);
}