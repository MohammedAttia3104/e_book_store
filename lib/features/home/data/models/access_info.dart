import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'e_pub.dart';

part 'access_info.g.dart';

@JsonSerializable()
@HiveType(typeId: 5)
class AccessInfo {
  @JsonKey(name: "country")
  @HiveField(0)
  final String? country;
  @JsonKey(name: "viewability")
  @HiveField(1)
  final String? viewAbility;
  @JsonKey(name: "embeddable")
  @HiveField(2)
  final bool embeddable;
  @JsonKey(name: "publicDomain")
  @HiveField(3)
  final bool publicDomain;
  @JsonKey(name: "textToSpeechPermission")
  @HiveField(4)
  final String? textToSpeechPermission;
  @JsonKey(name: "epub")
  @HiveField(5)
  final Epub epub;
  @JsonKey(name: "pdf")
  @HiveField(6)
  final Epub pdf;
  @JsonKey(name: "webReaderLink")
  @HiveField(7)
  final String? webReaderLink;
  @JsonKey(name: "accessViewStatus")
  @HiveField(8)
  final String? accessViewStatus;
  @JsonKey(name: "quoteSharingAllowed")
  @HiveField(9)
  final bool quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewAbility,
    required this.embeddable,
    required this.publicDomain,
    this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => _$AccessInfoFromJson(json);
}