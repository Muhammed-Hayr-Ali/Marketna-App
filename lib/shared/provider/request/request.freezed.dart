// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestMethod {
  RequestParameters get requestParameters => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestParameters requestParameters) get,
    required TResult Function(RequestParameters requestParameters) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestParameters requestParameters)? get,
    TResult? Function(RequestParameters requestParameters)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestParameters requestParameters)? get,
    TResult Function(RequestParameters requestParameters)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestGET value) get,
    required TResult Function(_RequestPOST value) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestGET value)? get,
    TResult? Function(_RequestPOST value)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestGET value)? get,
    TResult Function(_RequestPOST value)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestMethodCopyWith<RequestMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestMethodCopyWith<$Res> {
  factory $RequestMethodCopyWith(
          RequestMethod value, $Res Function(RequestMethod) then) =
      _$RequestMethodCopyWithImpl<$Res, RequestMethod>;
  @useResult
  $Res call({RequestParameters requestParameters});

  $RequestParametersCopyWith<$Res> get requestParameters;
}

/// @nodoc
class _$RequestMethodCopyWithImpl<$Res, $Val extends RequestMethod>
    implements $RequestMethodCopyWith<$Res> {
  _$RequestMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestParameters = null,
  }) {
    return _then(_value.copyWith(
      requestParameters: null == requestParameters
          ? _value.requestParameters
          : requestParameters // ignore: cast_nullable_to_non_nullable
              as RequestParameters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestParametersCopyWith<$Res> get requestParameters {
    return $RequestParametersCopyWith<$Res>(_value.requestParameters, (value) {
      return _then(_value.copyWith(requestParameters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestGETImplCopyWith<$Res>
    implements $RequestMethodCopyWith<$Res> {
  factory _$$RequestGETImplCopyWith(
          _$RequestGETImpl value, $Res Function(_$RequestGETImpl) then) =
      __$$RequestGETImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestParameters requestParameters});

  @override
  $RequestParametersCopyWith<$Res> get requestParameters;
}

/// @nodoc
class __$$RequestGETImplCopyWithImpl<$Res>
    extends _$RequestMethodCopyWithImpl<$Res, _$RequestGETImpl>
    implements _$$RequestGETImplCopyWith<$Res> {
  __$$RequestGETImplCopyWithImpl(
      _$RequestGETImpl _value, $Res Function(_$RequestGETImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestParameters = null,
  }) {
    return _then(_$RequestGETImpl(
      requestParameters: null == requestParameters
          ? _value.requestParameters
          : requestParameters // ignore: cast_nullable_to_non_nullable
              as RequestParameters,
    ));
  }
}

/// @nodoc

class _$RequestGETImpl implements _RequestGET {
  const _$RequestGETImpl({required this.requestParameters});

  @override
  final RequestParameters requestParameters;

  @override
  String toString() {
    return 'RequestMethod.get(requestParameters: $requestParameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestGETImpl &&
            (identical(other.requestParameters, requestParameters) ||
                other.requestParameters == requestParameters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestParameters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestGETImplCopyWith<_$RequestGETImpl> get copyWith =>
      __$$RequestGETImplCopyWithImpl<_$RequestGETImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestParameters requestParameters) get,
    required TResult Function(RequestParameters requestParameters) post,
  }) {
    return get(requestParameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestParameters requestParameters)? get,
    TResult? Function(RequestParameters requestParameters)? post,
  }) {
    return get?.call(requestParameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestParameters requestParameters)? get,
    TResult Function(RequestParameters requestParameters)? post,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(requestParameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestGET value) get,
    required TResult Function(_RequestPOST value) post,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestGET value)? get,
    TResult? Function(_RequestPOST value)? post,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestGET value)? get,
    TResult Function(_RequestPOST value)? post,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _RequestGET implements RequestMethod {
  const factory _RequestGET(
      {required final RequestParameters requestParameters}) = _$RequestGETImpl;

  @override
  RequestParameters get requestParameters;
  @override
  @JsonKey(ignore: true)
  _$$RequestGETImplCopyWith<_$RequestGETImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestPOSTImplCopyWith<$Res>
    implements $RequestMethodCopyWith<$Res> {
  factory _$$RequestPOSTImplCopyWith(
          _$RequestPOSTImpl value, $Res Function(_$RequestPOSTImpl) then) =
      __$$RequestPOSTImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestParameters requestParameters});

  @override
  $RequestParametersCopyWith<$Res> get requestParameters;
}

/// @nodoc
class __$$RequestPOSTImplCopyWithImpl<$Res>
    extends _$RequestMethodCopyWithImpl<$Res, _$RequestPOSTImpl>
    implements _$$RequestPOSTImplCopyWith<$Res> {
  __$$RequestPOSTImplCopyWithImpl(
      _$RequestPOSTImpl _value, $Res Function(_$RequestPOSTImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestParameters = null,
  }) {
    return _then(_$RequestPOSTImpl(
      requestParameters: null == requestParameters
          ? _value.requestParameters
          : requestParameters // ignore: cast_nullable_to_non_nullable
              as RequestParameters,
    ));
  }
}

/// @nodoc

class _$RequestPOSTImpl implements _RequestPOST {
  const _$RequestPOSTImpl({required this.requestParameters});

  @override
  final RequestParameters requestParameters;

  @override
  String toString() {
    return 'RequestMethod.post(requestParameters: $requestParameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPOSTImpl &&
            (identical(other.requestParameters, requestParameters) ||
                other.requestParameters == requestParameters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestParameters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPOSTImplCopyWith<_$RequestPOSTImpl> get copyWith =>
      __$$RequestPOSTImplCopyWithImpl<_$RequestPOSTImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestParameters requestParameters) get,
    required TResult Function(RequestParameters requestParameters) post,
  }) {
    return post(requestParameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestParameters requestParameters)? get,
    TResult? Function(RequestParameters requestParameters)? post,
  }) {
    return post?.call(requestParameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestParameters requestParameters)? get,
    TResult Function(RequestParameters requestParameters)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(requestParameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestGET value) get,
    required TResult Function(_RequestPOST value) post,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestGET value)? get,
    TResult? Function(_RequestPOST value)? post,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestGET value)? get,
    TResult Function(_RequestPOST value)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class _RequestPOST implements RequestMethod {
  const factory _RequestPOST(
      {required final RequestParameters requestParameters}) = _$RequestPOSTImpl;

  @override
  RequestParameters get requestParameters;
  @override
  @JsonKey(ignore: true)
  _$$RequestPOSTImplCopyWith<_$RequestPOSTImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
