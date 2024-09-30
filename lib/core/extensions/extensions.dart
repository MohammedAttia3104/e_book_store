extension StringExtension on String? {
  bool isEmptyOrNull() => this == null || this == '';
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}