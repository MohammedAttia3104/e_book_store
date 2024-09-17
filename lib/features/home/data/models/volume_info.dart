import 'package:e_book_store/features/home/data/models/reading_modes.dart';
import 'package:json_annotation/json_annotation.dart';
import 'image_links.dart';

part 'volume_info.g.dart';

@JsonSerializable()
class VolumeInfo {
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "subtitle")
  final String? subtitle;
  @JsonKey(name: "authors")
  final List<String> authors;
  @JsonKey(name: "publisher")
  final String publisher;
  @JsonKey(name: "publishedDate")
  final String publishedDate;
  @JsonKey(name: "description")
  final String description;
  // @JsonKey(name: "industryIdentifiers")
  // final List<IndustryIdentifier> industryIdentifiers;
  @JsonKey(name: "readingModes")
  final ReadingModes readingModes;
  @JsonKey(name: "pageCount")
  final int pageCount;
  @JsonKey(name: "printType")
  final String printType;
  @JsonKey(name: "categories")
  final List<String> categories;
  @JsonKey(name: "maturityRating")
  final String maturityRating;
  @JsonKey(name: "allowAnonLogging")
  final bool allowAnonLogging;
  @JsonKey(name: "contentVersion")
  final String contentVersion;
  // @JsonKey(name: "panelizationSummary")
  // final PanelizationSummary panelizationSummary;
  @JsonKey(name: "imageLinks")
  final ImageLinks imageLinks;
  @JsonKey(name: "language")
  final String language;
  @JsonKey(name: "previewLink")
  final String previewLink;
  @JsonKey(name: "infoLink")
  final String infoLink;
  @JsonKey(name: "canonicalVolumeLink")
  final String canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    this.subtitle,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    // required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    // required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => _$VolumeInfoFromJson(json);
}