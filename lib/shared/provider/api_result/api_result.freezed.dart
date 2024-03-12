// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResult<T> {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status, String message, T data, T? data2)
        success,
    required TResult Function(bool status, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status, String message, T data, T? data2)? success,
    TResult? Function(bool status, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status, String message, T data, T? data2)? success,
    TResult Function(bool status, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResultSuccess<T> value) success,
    required TResult Function(_ApiResultFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResultSuccess<T> value)? success,
    TResult? Function(_ApiResultFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResultSuccess<T> value)? success,
    TResult Function(_ApiResultFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResultCopyWith<T, ApiResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<T, $Res> {
  factory $ApiResultCopyWith(
          ApiResult<T> value, $Res Function(ApiResult<T>) then) =
      _$ApiResultCopyWithImpl<T, $Res, ApiResult<T>>;
  @useResult
  $Res call({bool status, String message});
}

/// @nodoc
class _$ApiResultCopyWithImpl<T, $Res, $Val extends ApiResult<T>>
    implements $ApiResultCopyWith<T, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResultSuccessImplCopyWith<T, $Res>
    implements $ApiResultCopyWith<T, $Res> {
  factory _$$ApiResultSuccessImplCopyWith(_$ApiResultSuccessImpl<T> value,
          $Res Function(_$ApiResultSuccessImpl<T>) then) =
      __$$ApiResultSuccessImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool status, String message, T data, T? data2});
}

/// @nodoc
class __$$ApiResultSuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ApiResultSuccessImpl<T>>
    implements _$$ApiResultSuccessImplCopyWith<T, $Res> {
  __$$ApiResultSuccessImplCopyWithImpl(_$ApiResultSuccessImpl<T> _value,
      $Res Function(_$ApiResultSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
    Object? data2 = freezed,
  }) {
    return _then(_$ApiResultSuccessImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      data2: freezed == data2
          ? _value.data2
          : data2 // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ApiResultSuccessImpl<T> implements _ApiResultSuccess<T> {
  const _$ApiResultSuccessImpl(
      {required this.status,
      required this.message,
      required this.data,
      this.data2});

  @override
  final bool status;
  @override
  final String message;
  @override
  final T data;
  @override
  final T? data2;

  @override
  String toString() {
    return 'ApiResult<$T>.success(status: $status, message: $message, data: $data, data2: $data2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultSuccessImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.data2, data2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(data2));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResultSuccessImplCopyWith<T, _$ApiResultSuccessImpl<T>> get copyWith =>
      __$$ApiResultSuccessImplCopyWithImpl<T, _$ApiResultSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status, String message, T data, T? data2)
        success,
    required TResult Function(bool status, String message) failure,
  }) {
    return success(status, message, data, data2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status, String message, T data, T? data2)? success,
    TResult? Function(bool status, String message)? failure,
  }) {
    return success?.call(status, message, data, data2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status, String message, T data, T? data2)? success,
    TResult Function(bool status, String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, message, data, data2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResultSuccess<T> value) success,
    required TResult Function(_ApiResultFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResultSuccess<T> value)? success,
    TResult? Function(_ApiResultFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResultSuccess<T> value)? success,
    TResult Function(_ApiResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ApiResultSuccess<T> implements ApiResult<T> {
  const factory _ApiResultSuccess(
      {required final bool status,
      required final String message,
      required final T data,
      final T? data2}) = _$ApiResultSuccessImpl<T>;

  @override
  bool get status;
  @override
  String get message;
  T get data;
  T? get data2;
  @override
  @JsonKey(ignore: true)
  _$$ApiResultSuccessImplCopyWith<T, _$ApiResultSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResultFailureImplCopyWith<T, $Res>
    implements $ApiResultCopyWith<T, $Res> {
  factory _$$ApiResultFailureImplCopyWith(_$ApiResultFailureImpl<T> value,
          $Res Function(_$ApiResultFailureImpl<T>) then) =
      __$$ApiResultFailureImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool status, String message});
}

/// @nodoc
class __$$ApiResultFailureImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ApiResultFailureImpl<T>>
    implements _$$ApiResultFailureImplCopyWith<T, $Res> {
  __$$ApiResultFailureImplCopyWithImpl(_$ApiResultFailureImpl<T> _value,
      $Res Function(_$ApiResultFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$ApiResultFailureImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiResultFailureImpl<T> implements _ApiResultFailure<T> {
  const _$ApiResultFailureImpl({required this.status, required this.message});

  @override
  final bool status;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiResult<$T>.failure(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultFailureImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResultFailureImplCopyWith<T, _$ApiResultFailureImpl<T>> get copyWith =>
      __$$ApiResultFailureImplCopyWithImpl<T, _$ApiResultFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status, String message, T data, T? data2)
        success,
    required TResult Function(bool status, String message) failure,
  }) {
    return failure(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status, String message, T data, T? data2)? success,
    TResult? Function(bool status, String message)? failure,
  }) {
    return failure?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status, String message, T data, T? data2)? success,
    TResult Function(bool status, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResultSuccess<T> value) success,
    required TResult Function(_ApiResultFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResultSuccess<T> value)? success,
    TResult? Function(_ApiResultFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResultSuccess<T> value)? success,
    TResult Function(_ApiResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ApiResultFailure<T> implements ApiResult<T> {
  const factory _ApiResultFailure(
      {required final bool status,
      required final String message}) = _$ApiResultFailureImpl<T>;

  @override
  bool get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApiResultFailureImplCopyWith<T, _$ApiResultFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
