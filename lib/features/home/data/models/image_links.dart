import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_links.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class ImageLinks {
  @JsonKey(name: "smallThumbnail")
  @HiveField(0)
  final String? smallThumbnail;
  @JsonKey(name: "thumbnail")
  @HiveField(1)
  final String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}
