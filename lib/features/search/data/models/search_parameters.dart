class SearchParameters {
  final String query;
  final int startIndex;
  final int maxResults;
  final String? orderBy;
  final String? printType;
  final String? langRestrict;
  final String? filter;

  SearchParameters({
    required this.query,
    this.startIndex = 0,
    this.maxResults = 10,
    this.orderBy,
    this.printType,
    this.langRestrict,
    this.filter,
  });
}