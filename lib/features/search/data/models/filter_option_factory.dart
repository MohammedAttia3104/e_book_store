import 'filter_system_options.dart';

class FilterOptionFactory {
  static FilterOption createFilterOption(String type) {
    switch (type) {
      case 'Order By':
        return OrderByOption();
      case 'Print Type':
        return PrintTypeOption();
      case 'Language':
        return LanguageOption();
      case 'Filter':
        return FilterTypeOption();
      default:
        throw Exception('Unknown filter option type');
    }
  }
}