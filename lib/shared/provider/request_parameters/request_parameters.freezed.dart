// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestParameters {
  String get url => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  Map<String, dynamic> get authorization => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestParametersCopyWith<RequestParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestParametersCopyWith<$Res> {
  factory $RequestParametersCopyWith(
          RequestParameters value, $Res Function(RequestParameters) then) =
      _$RequestParametersCopyWithImpl<$Res, RequestParameters>;
  @useResult
  $Res call(
      {String url,
      Object? data,
      Map<String, String>? headers,
      Map<String, dynamic> authorization});
}

/// @nodoc
class _$RequestParametersCopyWithImpl<$Res, $Val extends RequestParameters>
    implements $RequestParametersCopyWith<$Res> {
  _$RequestParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? data = freezed,
    Object? headers = freezed,
    Object? authorization = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data ? _value.data : data,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      authorization: null == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestParametersImplCopyWith<$Res>
    implements $RequestParametersCopyWith<$Res> {
  factory _$$RequestParametersImplCopyWith(_$RequestParametersImpl value,
          $Res Function(_$RequestParametersImpl) then) =
      __$$RequestParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      Object? data,
      Map<String, String>? headers,
      Map<String, dynamic> authorization});
}

/// @nodoc
class __$$RequestParametersImplCopyWithImpl<$Res>
    extends _$RequestParametersCopyWithImpl<$Res, _$RequestParametersImpl>
    implements _$$RequestParametersImplCopyWith<$Res> {
  __$$RequestParametersImplCopyWithImpl(_$RequestParametersImpl _value,
      $Res Function(_$RequestParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? data = freezed,
    Object? headers = freezed,
    Object? authorization = null,
  }) {
    return _then(_$RequestParametersImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data ? _value.data : data,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      authorization: null == authorization
          ? _value._authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$RequestParametersImpl implements _RequestParameters {
  const _$RequestParametersImpl(
      {required this.url,
      this.data,
      final Map<String, String>? headers,
      final Map<String, dynamic> authorization = const {}})
      : _headers = headers,
        _authorization = authorization;

  @override
  final String url;
  @override
  final Object? data;
  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic> _authorization;
  @override
  @JsonKey()
  Map<String, dynamic> get authorization {
    if (_authorization is EqualUnmodifiableMapView) return _authorization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_authorization);
  }

  @override
  String toString() {
    return 'RequestParameters(url: $url, data: $data, headers: $headers, authorization: $authorization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestParametersImpl &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality()
                .equals(other._authorization, _authorization));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_authorization));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestParametersImplCopyWith<_$RequestParametersImpl> get copyWith =>
      __$$RequestParametersImplCopyWithImpl<_$RequestParametersImpl>(
          this, _$identity);
}

abstract class _RequestParameters implements RequestParameters {
  const factory _RequestParameters(
      {required final String url,
      final Object? data,
      final Map<String, String>? headers,
      final Map<String, dynamic> authorization}) = _$RequestParametersImpl;

  @override
  String get url;
  @override
  Object? get data;
  @override
  Map<String, String>? get headers;
  @override
  Map<String, dynamic> get authorization;
  @override
  @JsonKey(ignore: true)
  _$$RequestParametersImplCopyWith<_$RequestParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
