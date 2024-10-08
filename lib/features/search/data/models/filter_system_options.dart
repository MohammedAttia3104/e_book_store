abstract class FilterOption {
  String? selectedValue;

  List<String> get options;

  void apply(String? value);
}

class OrderByOption extends FilterOption {
  @override
  List<String> get options => ['newest', 'relevance'];

  @override
  void apply(String? value) {
    selectedValue = value;
  }
}

class PrintTypeOption extends FilterOption {
  @override
  List<String> get options => ['books', 'magazines'];

  @override
  void apply(String? value) {
    selectedValue = value;
  }
}

class LanguageOption extends FilterOption {
  @override
  List<String> get options => ['en', 'ar'];

  @override
  void apply(String? value) {
    selectedValue = value;
  }
}

class FilterTypeOption extends FilterOption {
  @override
  List<String> get options =>
      ['partial', 'full', 'free-ebooks', 'paid-ebooks', 'ebooks'];

  @override
  void apply(String? value) {
    selectedValue = value;
  }
}
