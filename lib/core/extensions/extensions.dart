extension StringExtension on String? {
  bool isEmptyOrNull() => this == null || this == '';
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmptyList() => this == null || this!.isEmpty;
}