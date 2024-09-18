import 'package:json_annotation/json_annotation.dart';
import 'e_pub.dart';

part 'access_info.g.dart';

@JsonSerializable()
class AccessInfo {
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "viewability")
  final String? viewAbility;
  @JsonKey(name: "embeddable")
  final bool embeddable;
  @JsonKey(name: "publicDomain")
  final bool publicDomain;
  @JsonKey(name: "textToSpeechPermission")
  final String? textToSpeechPermission;
  @JsonKey(name: "epub")
  final Epub epub;
  @JsonKey(name: "pdf")
  final Epub pdf;
  @JsonKey(name: "webReaderLink")
  final String? webReaderLink;
  @JsonKey(name: "accessViewStatus")
  final String? accessViewStatus;
  @JsonKey(name: "quoteSharingAllowed")
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