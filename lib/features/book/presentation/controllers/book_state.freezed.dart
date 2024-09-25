// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bookDetailsLoading,
    required TResult Function(BookItemModel data) bookDetailsSuccess,
    required TResult Function(String message) bookDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bookDetailsLoading,
    TResult? Function(BookItemModel data)? bookDetailsSuccess,
    TResult? Function(String message)? bookDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bookDetailsLoading,
    TResult Function(BookItemModel data)? bookDetailsSuccess,
    TResult Function(String message)? bookDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BookDetailsLoading value) bookDetailsLoading,
    required TResult Function(BookDetailsSuccess value) bookDetailsSuccess,
    required TResult Function(BookDetailsFailure value) bookDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult? Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult? Function(BookDetailsFailure value)? bookDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult Function(BookDetailsFailure value)? bookDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res, BookState>;
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res, $Val extends BookState>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

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
    extends _$BookStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BookState.initial()';
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
    required TResult Function() bookDetailsLoading,
    required TResult Function(BookItemModel data) bookDetailsSuccess,
    required TResult Function(String message) bookDetailsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bookDetailsLoading,
    TResult? Function(BookItemModel data)? bookDetailsSuccess,
    TResult? Function(String message)? bookDetailsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bookDetailsLoading,
    TResult Function(BookItemModel data)? bookDetailsSuccess,
    TResult Function(String message)? bookDetailsFailure,
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
    required TResult Function(BookDetailsLoading value) bookDetailsLoading,
    required TResult Function(BookDetailsSuccess value) bookDetailsSuccess,
    required TResult Function(BookDetailsFailure value) bookDetailsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult? Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult? Function(BookDetailsFailure value)? bookDetailsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult Function(BookDetailsFailure value)? bookDetailsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BookDetailsLoadingImplCopyWith<$Res> {
  factory _$$BookDetailsLoadingImplCopyWith(_$BookDetailsLoadingImpl value,
          $Res Function(_$BookDetailsLoadingImpl) then) =
      __$$BookDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookDetailsLoadingImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$BookDetailsLoadingImpl>
    implements _$$BookDetailsLoadingImplCopyWith<$Res> {
  __$$BookDetailsLoadingImplCopyWithImpl(_$BookDetailsLoadingImpl _value,
      $Res Function(_$BookDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookDetailsLoadingImpl implements BookDetailsLoading {
  const _$BookDetailsLoadingImpl();

  @override
  String toString() {
    return 'BookState.bookDetailsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bookDetailsLoading,
    required TResult Function(BookItemModel data) bookDetailsSuccess,
    required TResult Function(String message) bookDetailsFailure,
  }) {
    return bookDetailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bookDetailsLoading,
    TResult? Function(BookItemModel data)? bookDetailsSuccess,
    TResult? Function(String message)? bookDetailsFailure,
  }) {
    return bookDetailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bookDetailsLoading,
    TResult Function(BookItemModel data)? bookDetailsSuccess,
    TResult Function(String message)? bookDetailsFailure,
    required TResult orElse(),
  }) {
    if (bookDetailsLoading != null) {
      return bookDetailsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BookDetailsLoading value) bookDetailsLoading,
    required TResult Function(BookDetailsSuccess value) bookDetailsSuccess,
    required TResult Function(BookDetailsFailure value) bookDetailsFailure,
  }) {
    return bookDetailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult? Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult? Function(BookDetailsFailure value)? bookDetailsFailure,
  }) {
    return bookDetailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult Function(BookDetailsFailure value)? bookDetailsFailure,
    required TResult orElse(),
  }) {
    if (bookDetailsLoading != null) {
      return bookDetailsLoading(this);
    }
    return orElse();
  }
}

abstract class BookDetailsLoading implements BookState {
  const factory BookDetailsLoading() = _$BookDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$BookDetailsSuccessImplCopyWith<$Res> {
  factory _$$BookDetailsSuccessImplCopyWith(_$BookDetailsSuccessImpl value,
          $Res Function(_$BookDetailsSuccessImpl) then) =
      __$$BookDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookItemModel data});
}

/// @nodoc
class __$$BookDetailsSuccessImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$BookDetailsSuccessImpl>
    implements _$$BookDetailsSuccessImplCopyWith<$Res> {
  __$$BookDetailsSuccessImplCopyWithImpl(_$BookDetailsSuccessImpl _value,
      $Res Function(_$BookDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$BookDetailsSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookItemModel,
    ));
  }
}

/// @nodoc

class _$BookDetailsSuccessImpl implements BookDetailsSuccess {
  const _$BookDetailsSuccessImpl(this.data);

  @override
  final BookItemModel data;

  @override
  String toString() {
    return 'BookState.bookDetailsSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDetailsSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDetailsSuccessImplCopyWith<_$BookDetailsSuccessImpl> get copyWith =>
      __$$BookDetailsSuccessImplCopyWithImpl<_$BookDetailsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bookDetailsLoading,
    required TResult Function(BookItemModel data) bookDetailsSuccess,
    required TResult Function(String message) bookDetailsFailure,
  }) {
    return bookDetailsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bookDetailsLoading,
    TResult? Function(BookItemModel data)? bookDetailsSuccess,
    TResult? Function(String message)? bookDetailsFailure,
  }) {
    return bookDetailsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bookDetailsLoading,
    TResult Function(BookItemModel data)? bookDetailsSuccess,
    TResult Function(String message)? bookDetailsFailure,
    required TResult orElse(),
  }) {
    if (bookDetailsSuccess != null) {
      return bookDetailsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BookDetailsLoading value) bookDetailsLoading,
    required TResult Function(BookDetailsSuccess value) bookDetailsSuccess,
    required TResult Function(BookDetailsFailure value) bookDetailsFailure,
  }) {
    return bookDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult? Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult? Function(BookDetailsFailure value)? bookDetailsFailure,
  }) {
    return bookDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult Function(BookDetailsFailure value)? bookDetailsFailure,
    required TResult orElse(),
  }) {
    if (bookDetailsSuccess != null) {
      return bookDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class BookDetailsSuccess implements BookState {
  const factory BookDetailsSuccess(final BookItemModel data) =
      _$BookDetailsSuccessImpl;

  BookItemModel get data;
  @JsonKey(ignore: true)
  _$$BookDetailsSuccessImplCopyWith<_$BookDetailsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookDetailsFailureImplCopyWith<$Res> {
  factory _$$BookDetailsFailureImplCopyWith(_$BookDetailsFailureImpl value,
          $Res Function(_$BookDetailsFailureImpl) then) =
      __$$BookDetailsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BookDetailsFailureImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$BookDetailsFailureImpl>
    implements _$$BookDetailsFailureImplCopyWith<$Res> {
  __$$BookDetailsFailureImplCopyWithImpl(_$BookDetailsFailureImpl _value,
      $Res Function(_$BookDetailsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BookDetailsFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookDetailsFailureImpl implements BookDetailsFailure {
  const _$BookDetailsFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BookState.bookDetailsFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDetailsFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDetailsFailureImplCopyWith<_$BookDetailsFailureImpl> get copyWith =>
      __$$BookDetailsFailureImplCopyWithImpl<_$BookDetailsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bookDetailsLoading,
    required TResult Function(BookItemModel data) bookDetailsSuccess,
    required TResult Function(String message) bookDetailsFailure,
  }) {
    return bookDetailsFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bookDetailsLoading,
    TResult? Function(BookItemModel data)? bookDetailsSuccess,
    TResult? Function(String message)? bookDetailsFailure,
  }) {
    return bookDetailsFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bookDetailsLoading,
    TResult Function(BookItemModel data)? bookDetailsSuccess,
    TResult Function(String message)? bookDetailsFailure,
    required TResult orElse(),
  }) {
    if (bookDetailsFailure != null) {
      return bookDetailsFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BookDetailsLoading value) bookDetailsLoading,
    required TResult Function(BookDetailsSuccess value) bookDetailsSuccess,
    required TResult Function(BookDetailsFailure value) bookDetailsFailure,
  }) {
    return bookDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult? Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult? Function(BookDetailsFailure value)? bookDetailsFailure,
  }) {
    return bookDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookDetailsLoading value)? bookDetailsLoading,
    TResult Function(BookDetailsSuccess value)? bookDetailsSuccess,
    TResult Function(BookDetailsFailure value)? bookDetailsFailure,
    required TResult orElse(),
  }) {
    if (bookDetailsFailure != null) {
      return bookDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class BookDetailsFailure implements BookState {
  const factory BookDetailsFailure(final String message) =
      _$BookDetailsFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$BookDetailsFailureImplCopyWith<_$BookDetailsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}