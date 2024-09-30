import 'package:json_annotation/json_annotation.dart';
import 'dimensions.dart';
import 'reading_modes.dart';
import 'image_links.dart';
import 'package:hive/hive.dart';

part 'volume_info.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class VolumeInfo {
  @HiveField(0)
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "subtitle")
  @HiveField(1)
  final String? subtitle;
  @JsonKey(name: "authors")
  @HiveField(2)
  final List<String>? authors;
  @JsonKey(name: "publisher")
  @HiveField(3)
  final String? publisher;
  @JsonKey(name: "publishedDate")
  @HiveField(4)
  final String? publishedDate;
  @JsonKey(name: "description")
  @HiveField(5)
  final String? description;
  @JsonKey(name: "readingModes")
  @HiveField(6)
  final ReadingModes readingModes;
  @JsonKey(name: "pageCount")
  @HiveField(7)
  final int pageCount;
  @JsonKey(name: "printType")
  @HiveField(8)
  final String? printType;
  @JsonKey(name: "categories")
  @HiveField(9)
  final List<String>? categories;
  @JsonKey(name: "maturityRating")
  @HiveField(10)
  final String? maturityRating;
  @JsonKey(name: "allowAnonLogging")
  @HiveField(11)
  final bool allowAnonLogging;
  @JsonKey(name: "dimensions")
  @HiveField(12)
  final Dimensions? dimensions;
  @JsonKey(name: "contentVersion")
  @HiveField(13)
  final String contentVersion;
  @JsonKey(name: "imageLinks")
  @HiveField(14)
  final ImageLinks imageLinks;
  @JsonKey(name: "language")
  @HiveField(15)
  final String? language;
  @JsonKey(name: "previewLink")
  @HiveField(16)
  final String? previewLink;
  @JsonKey(name: "infoLink")
  @HiveField(17)
  final String? infoLink;
  @JsonKey(name: "canonicalVolumeLink")
  @HiveField(18)
  final String? canonicalVolumeLink;

  VolumeInfo({
    required this.dimensions,
    required this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    this.categories,
    this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.imageLinks,
    required this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}