// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoadingState,
    required TResult Function(List<BookItemModel> books) searchSuccessState,
    required TResult Function(String message) searchFailureState,
    required TResult Function(List<BookItemModel> books) searchLoadingMoreState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<BookItemModel> books)? searchSuccessState,
    TResult? Function(String message)? searchFailureState,
    TResult? Function(List<BookItemModel> books)? searchLoadingMoreState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoadingState,
    TResult Function(List<BookItemModel> books)? searchSuccessState,
    TResult Function(String message)? searchFailureState,
    TResult Function(List<BookItemModel> books)? searchLoadingMoreState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoadingState value) searchLoadingState,
    required TResult Function(SearchSuccessState value) searchSuccessState,
    required TResult Function(SearchFailureState value) searchFailureState,
    required TResult Function(SearchLoadingMoreState value)
        searchLoadingMoreState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoadingState value)? searchLoadingState,
    TResult? Function(SearchSuccessState value)? searchSuccessState,
    TResult? Function(SearchFailureState value)? searchFailureState,
    TResult? Function(SearchLoadingMoreState value)? searchLoadingMoreState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoadingState value)? searchLoadingState,
    TResult Function(SearchSuccessState value)? searchSuccessState,
    TResult Function(SearchFailureState value)? searchFailureState,
    TResult Function(SearchLoadingMoreState value)? searchLoadingMoreState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoadingState,
    required TResult Function(List<BookItemModel> books) searchSuccessState,
    required TResult Function(String message) searchFailureState,
    required TResult Function(List<BookItemModel> books) searchLoadingMoreState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<BookItemModel> books)? searchSuccessState,
    TResult? Function(String message)? searchFailureState,
    TResult? Function(List<BookItemModel> books)? searchLoadingMoreState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoadingState,
    TResult Function(List<BookItemModel> books)? searchSuccessState,
    TResult Function(String message)? searchFailureState,
    TResult Function(List<BookItemModel> books)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoadingState value) searchLoadingState,
    required TResult Function(SearchSuccessState value) searchSuccessState,
    required TResult Function(SearchFailureState value) searchFailureState,
    required TResult Function(SearchLoadingMoreState value)
        searchLoadingMoreState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoadingState value)? searchLoadingState,
    TResult? Function(SearchSuccessState value)? searchSuccessState,
    TResult? Function(SearchFailureState value)? searchFailureState,
    TResult? Function(SearchLoadingMoreState value)? searchLoadingMoreState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoadingState value)? searchLoadingState,
    TResult Function(SearchSuccessState value)? searchSuccessState,
    TResult Function(SearchFailureState value)? searchFailureState,
    TResult Function(SearchLoadingMoreState value)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingStateImplCopyWith<$Res> {
  factory _$$SearchLoadingStateImplCopyWith(_$SearchLoadingStateImpl value,
          $Res Function(_$SearchLoadingStateImpl) then) =
      __$$SearchLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingStateImpl>
    implements _$$SearchLoadingStateImplCopyWith<$Res> {
  __$$SearchLoadingStateImplCopyWithImpl(_$SearchLoadingStateImpl _value,
      $Res Function(_$SearchLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchLoadingStateImpl implements SearchLoadingState {
  const _$SearchLoadingStateImpl();

  @override
  String toString() {
    return 'SearchState.searchLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoadingState,
    required TResult Function(List<BookItemModel> books) searchSuccessState,
    required TResult Function(String message) searchFailureState,
    required TResult Function(List<BookItemModel> books) searchLoadingMoreState,
  }) {
    return searchLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<BookItemModel> books)? searchSuccessState,
    TResult? Function(String message)? searchFailureState,
    TResult? Function(List<BookItemModel> books)? searchLoadingMoreState,
  }) {
    return searchLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoadingState,
    TResult Function(List<BookItemModel> books)? searchSuccessState,
    TResult Function(String message)? searchFailureState,
    TResult Function(List<BookItemModel> books)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (searchLoadingState != null) {
      return searchLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoadingState value) searchLoadingState,
    required TResult Function(SearchSuccessState value) searchSuccessState,
    required TResult Function(SearchFailureState value) searchFailureState,
    required TResult Function(SearchLoadingMoreState value)
        searchLoadingMoreState,
  }) {
    return searchLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoadingState value)? searchLoadingState,
    TResult? Function(SearchSuccessState value)? searchSuccessState,
    TResult? Function(SearchFailureState value)? searchFailureState,
    TResult? Function(SearchLoadingMoreState value)? searchLoadingMoreState,
  }) {
    return searchLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoadingState value)? searchLoadingState,
    TResult Function(SearchSuccessState value)? searchSuccessState,
    TResult Function(SearchFailureState value)? searchFailureState,
    TResult Function(SearchLoadingMoreState value)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (searchLoadingState != null) {
      return searchLoadingState(this);
    }
    return orElse();
  }
}

abstract class SearchLoadingState implements SearchState {
  const factory SearchLoadingState() = _$SearchLoadingStateImpl;
}

/// @nodoc
abstract class _$$SearchSuccessStateImplCopyWith<$Res> {
  factory _$$SearchSuccessStateImplCopyWith(_$SearchSuccessStateImpl value,
          $Res Function(_$SearchSuccessStateImpl) then) =
      __$$SearchSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookItemModel> books});
}

/// @nodoc
class __$$SearchSuccessStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSuccessStateImpl>
    implements _$$SearchSuccessStateImplCopyWith<$Res> {
  __$$SearchSuccessStateImplCopyWithImpl(_$SearchSuccessStateImpl _value,
      $Res Function(_$SearchSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$SearchSuccessStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookItemModel>,
    ));
  }
}

/// @nodoc

class _$SearchSuccessStateImpl implements SearchSuccessState {
  const _$SearchSuccessStateImpl({required final List<BookItemModel> books})
      : _books = books;

  final List<BookItemModel> _books;
  @override
  List<BookItemModel> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'SearchState.searchSuccessState(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessStateImplCopyWith<_$SearchSuccessStateImpl> get copyWith =>
      __$$SearchSuccessStateImplCopyWithImpl<_$SearchSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoadingState,
    required TResult Function(List<BookItemModel> books) searchSuccessState,
    required TResult Function(String message) searchFailureState,
    required TResult Function(List<BookItemModel> books) searchLoadingMoreState,
  }) {
    return searchSuccessState(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<BookItemModel> books)? searchSuccessState,
    TResult? Function(String message)? searchFailureState,
    TResult? Function(List<BookItemModel> books)? searchLoadingMoreState,
  }) {
    return searchSuccessState?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoadingState,
    TResult Function(List<BookItemModel> books)? searchSuccessState,
    TResult Function(String message)? searchFailureState,
    TResult Function(List<BookItemModel> books)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (searchSuccessState != null) {
      return searchSuccessState(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoadingState value) searchLoadingState,
    required TResult Function(SearchSuccessState value) searchSuccessState,
    required TResult Function(SearchFailureState value) searchFailureState,
    required TResult Function(SearchLoadingMoreState value)
        searchLoadingMoreState,
  }) {
    return searchSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoadingState value)? searchLoadingState,
    TResult? Function(SearchSuccessState value)? searchSuccessState,
    TResult? Function(SearchFailureState value)? searchFailureState,
    TResult? Function(SearchLoadingMoreState value)? searchLoadingMoreState,
  }) {
    return searchSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoadingState value)? searchLoadingState,
    TResult Function(SearchSuccessState value)? searchSuccessState,
    TResult Function(SearchFailureState value)? searchFailureState,
    TResult Function(SearchLoadingMoreState value)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (searchSuccessState != null) {
      return searchSuccessState(this);
    }
    return orElse();
  }
}

abstract class SearchSuccessState implements SearchState {
  const factory SearchSuccessState({required final List<BookItemModel> books}) =
      _$SearchSuccessStateImpl;

  List<BookItemModel> get books;
  @JsonKey(ignore: true)
  _$$SearchSuccessStateImplCopyWith<_$SearchSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchFailureStateImplCopyWith<$Res> {
  factory _$$SearchFailureStateImplCopyWith(_$SearchFailureStateImpl value,
          $Res Function(_$SearchFailureStateImpl) then) =
      __$$SearchFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchFailureStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchFailureStateImpl>
    implements _$$SearchFailureStateImplCopyWith<$Res> {
  __$$SearchFailureStateImplCopyWithImpl(_$SearchFailureStateImpl _value,
      $Res Function(_$SearchFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchFailureStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchFailureStateImpl implements SearchFailureState {
  const _$SearchFailureStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.searchFailureState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFailureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFailureStateImplCopyWith<_$SearchFailureStateImpl> get copyWith =>
      __$$SearchFailureStateImplCopyWithImpl<_$SearchFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoadingState,
    required TResult Function(List<BookItemModel> books) searchSuccessState,
    required TResult Function(String message) searchFailureState,
    required TResult Function(List<BookItemModel> books) searchLoadingMoreState,
  }) {
    return searchFailureState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<BookItemModel> books)? searchSuccessState,
    TResult? Function(String message)? searchFailureState,
    TResult? Function(List<BookItemModel> books)? searchLoadingMoreState,
  }) {
    return searchFailureState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoadingState,
    TResult Function(List<BookItemModel> books)? searchSuccessState,
    TResult Function(String message)? searchFailureState,
    TResult Function(List<BookItemModel> books)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (searchFailureState != null) {
      return searchFailureState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoadingState value) searchLoadingState,
    required TResult Function(SearchSuccessState value) searchSuccessState,
    required TResult Function(SearchFailureState value) searchFailureState,
    required TResult Function(SearchLoadingMoreState value)
        searchLoadingMoreState,
  }) {
    return searchFailureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoadingState value)? searchLoadingState,
    TResult? Function(SearchSuccessState value)? searchSuccessState,
    TResult? Function(SearchFailureState value)? searchFailureState,
    TResult? Function(SearchLoadingMoreState value)? searchLoadingMoreState,
  }) {
    return searchFailureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoadingState value)? searchLoadingState,
    TResult Function(SearchSuccessState value)? searchSuccessState,
    TResult Function(SearchFailureState value)? searchFailureState,
    TResult Function(SearchLoadingMoreState value)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (searchFailureState != null) {
      return searchFailureState(this);
    }
    return orElse();
  }
}

abstract class SearchFailureState implements SearchState {
  const factory SearchFailureState({required final String message}) =
      _$SearchFailureStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SearchFailureStateImplCopyWith<_$SearchFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadingMoreStateImplCopyWith<$Res> {
  factory _$$SearchLoadingMoreStateImplCopyWith(
          _$SearchLoadingMoreStateImpl value,
          $Res Function(_$SearchLoadingMoreStateImpl) then) =
      __$$SearchLoadingMoreStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookItemModel> books});
}

/// @nodoc
class __$$SearchLoadingMoreStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingMoreStateImpl>
    implements _$$SearchLoadingMoreStateImplCopyWith<$Res> {
  __$$SearchLoadingMoreStateImplCopyWithImpl(
      _$SearchLoadingMoreStateImpl _value,
      $Res Function(_$SearchLoadingMoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$SearchLoadingMoreStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookItemModel>,
    ));
  }
}

/// @nodoc

class _$SearchLoadingMoreStateImpl implements SearchLoadingMoreState {
  const _$SearchLoadingMoreStateImpl({required final List<BookItemModel> books})
      : _books = books;

  final List<BookItemModel> _books;
  @override
  List<BookItemModel> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'SearchState.searchLoadingMoreState(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingMoreStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingMoreStateImplCopyWith<_$SearchLoadingMoreStateImpl>
      get copyWith => __$$SearchLoadingMoreStateImplCopyWithImpl<
          _$SearchLoadingMoreStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoadingState,
    required TResult Function(List<BookItemModel> books) searchSuccessState,
    required TResult Function(String message) searchFailureState,
    required TResult Function(List<BookItemModel> books) searchLoadingMoreState,
  }) {
    return searchLoadingMoreState(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<BookItemModel> books)? searchSuccessState,
    TResult? Function(String message)? searchFailureState,
    TResult? Function(List<BookItemModel> books)? searchLoadingMoreState,
  }) {
    return searchLoadingMoreState?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoadingState,
    TResult Function(List<BookItemModel> books)? searchSuccessState,
    TResult Function(String message)? searchFailureState,
    TResult Function(List<BookItemModel> books)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (searchLoadingMoreState != null) {
      return searchLoadingMoreState(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoadingState value) searchLoadingState,
    required TResult Function(SearchSuccessState value) searchSuccessState,
    required TResult Function(SearchFailureState value) searchFailureState,
    required TResult Function(SearchLoadingMoreState value)
        searchLoadingMoreState,
  }) {
    return searchLoadingMoreState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoadingState value)? searchLoadingState,
    TResult? Function(SearchSuccessState value)? searchSuccessState,
    TResult? Function(SearchFailureState value)? searchFailureState,
    TResult? Function(SearchLoadingMoreState value)? searchLoadingMoreState,
  }) {
    return searchLoadingMoreState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoadingState value)? searchLoadingState,
    TResult Function(SearchSuccessState value)? searchSuccessState,
    TResult Function(SearchFailureState value)? searchFailureState,
    TResult Function(SearchLoadingMoreState value)? searchLoadingMoreState,
    required TResult orElse(),
  }) {
    if (searchLoadingMoreState != null) {
      return searchLoadingMoreState(this);
    }
    return orElse();
  }
}

abstract class SearchLoadingMoreState implements SearchState {
  const factory SearchLoadingMoreState(
          {required final List<BookItemModel> books}) =
      _$SearchLoadingMoreStateImpl;

  List<BookItemModel> get books;
  @JsonKey(ignore: true)
  _$$SearchLoadingMoreStateImplCopyWith<_$SearchLoadingMoreStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
