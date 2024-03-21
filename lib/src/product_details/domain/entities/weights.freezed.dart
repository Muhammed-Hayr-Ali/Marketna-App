// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weights.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Weights _$WeightsFromJson(Map<String, dynamic> json) {
  return _Weights.fromJson(json);
}

/// @nodoc
mixin _$Weights {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  int get availableQuantity =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get product_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightsCopyWith<Weights> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightsCopyWith<$Res> {
  factory $WeightsCopyWith(Weights value, $Res Function(Weights) then) =
      _$WeightsCopyWithImpl<$Res, Weights>;
  @useResult
  $Res call(
      {int id,
      String name,
      String value,
      String price,
      int availableQuantity,
      int product_id});
}

/// @nodoc
class _$WeightsCopyWithImpl<$Res, $Val extends Weights>
    implements $WeightsCopyWith<$Res> {
  _$WeightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? price = null,
    Object? availableQuantity = null,
    Object? product_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightsImplCopyWith<$Res> implements $WeightsCopyWith<$Res> {
  factory _$$WeightsImplCopyWith(
          _$WeightsImpl value, $Res Function(_$WeightsImpl) then) =
      __$$WeightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String value,
      String price,
      int availableQuantity,
      int product_id});
}

/// @nodoc
class __$$WeightsImplCopyWithImpl<$Res>
    extends _$WeightsCopyWithImpl<$Res, _$WeightsImpl>
    implements _$$WeightsImplCopyWith<$Res> {
  __$$WeightsImplCopyWithImpl(
      _$WeightsImpl _value, $Res Function(_$WeightsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? price = null,
    Object? availableQuantity = null,
    Object? product_id = null,
  }) {
    return _then(_$WeightsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightsImpl implements _Weights {
  const _$WeightsImpl(
      {required this.id,
      this.name = "",
      this.value = "",
      this.price = "",
      required this.availableQuantity,
      required this.product_id});

  factory _$WeightsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String price;
  @override
  final int availableQuantity;
// ignore: non_constant_identifier_names
  @override
  final int product_id;

  @override
  String toString() {
    return 'Weights(id: $id, name: $name, value: $value, price: $price, availableQuantity: $availableQuantity, product_id: $product_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, value, price, availableQuantity, product_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightsImplCopyWith<_$WeightsImpl> get copyWith =>
      __$$WeightsImplCopyWithImpl<_$WeightsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightsImplToJson(
      this,
    );
  }
}

abstract class _Weights implements Weights {
  const factory _Weights(
      {required final int id,
      final String name,
      final String value,
      final String price,
      required final int availableQuantity,
      required final int product_id}) = _$WeightsImpl;

  factory _Weights.fromJson(Map<String, dynamic> json) = _$WeightsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get value;
  @override
  String get price;
  @override
  int get availableQuantity;
  @override // ignore: non_constant_identifier_names
  int get product_id;
  @override
  @JsonKey(ignore: true)
  _$$WeightsImplCopyWith<_$WeightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
