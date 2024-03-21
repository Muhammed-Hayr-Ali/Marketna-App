// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnailImage => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get availableQuantity => throw _privateConstructorUsedError;
  int get minimumQuantity => throw _privateConstructorUsedError;
  String get expirationDate => throw _privateConstructorUsedError;
  int get view => throw _privateConstructorUsedError;
  int get category_id => throw _privateConstructorUsedError;
  int get level_id => throw _privateConstructorUsedError;
  int get status_id => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  int get unit_id => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  Level? get level => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  Unit? get unit => throw _privateConstructorUsedError;
  Author? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String productName,
      String description,
      String thumbnailImage,
      String price,
      String discount,
      String code,
      int availableQuantity,
      int minimumQuantity,
      String expirationDate,
      int view,
      int category_id,
      int level_id,
      int status_id,
      int user_id,
      int unit_id,
      String quantity,
      String created_at,
      String updated_at,
      Category? category,
      Level? level,
      Status? status,
      Unit? unit,
      Author? user});

  $CategoryCopyWith<$Res>? get category;
  $LevelCopyWith<$Res>? get level;
  $StatusCopyWith<$Res>? get status;
  $UnitCopyWith<$Res>? get unit;
  $AuthorCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? description = null,
    Object? thumbnailImage = null,
    Object? price = null,
    Object? discount = null,
    Object? code = null,
    Object? availableQuantity = null,
    Object? minimumQuantity = null,
    Object? expirationDate = null,
    Object? view = null,
    Object? category_id = null,
    Object? level_id = null,
    Object? status_id = null,
    Object? user_id = null,
    Object? unit_id = null,
    Object? quantity = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? category = freezed,
    Object? level = freezed,
    Object? status = freezed,
    Object? unit = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      minimumQuantity: null == minimumQuantity
          ? _value.minimumQuantity
          : minimumQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int,
      level_id: null == level_id
          ? _value.level_id
          : level_id // ignore: cast_nullable_to_non_nullable
              as int,
      status_id: null == status_id
          ? _value.status_id
          : status_id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      unit_id: null == unit_id
          ? _value.unit_id
          : unit_id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Author?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelCopyWith<$Res>? get level {
    if (_value.level == null) {
      return null;
    }

    return $LevelCopyWith<$Res>(_value.level!, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $UnitCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsModelImplCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$ProductDetailsModelImplCopyWith(_$ProductDetailsModelImpl value,
          $Res Function(_$ProductDetailsModelImpl) then) =
      __$$ProductDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String productName,
      String description,
      String thumbnailImage,
      String price,
      String discount,
      String code,
      int availableQuantity,
      int minimumQuantity,
      String expirationDate,
      int view,
      int category_id,
      int level_id,
      int status_id,
      int user_id,
      int unit_id,
      String quantity,
      String created_at,
      String updated_at,
      Category? category,
      Level? level,
      Status? status,
      Unit? unit,
      Author? user});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $LevelCopyWith<$Res>? get level;
  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $UnitCopyWith<$Res>? get unit;
  @override
  $AuthorCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProductDetailsModelImplCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$ProductDetailsModelImpl>
    implements _$$ProductDetailsModelImplCopyWith<$Res> {
  __$$ProductDetailsModelImplCopyWithImpl(_$ProductDetailsModelImpl _value,
      $Res Function(_$ProductDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? description = null,
    Object? thumbnailImage = null,
    Object? price = null,
    Object? discount = null,
    Object? code = null,
    Object? availableQuantity = null,
    Object? minimumQuantity = null,
    Object? expirationDate = null,
    Object? view = null,
    Object? category_id = null,
    Object? level_id = null,
    Object? status_id = null,
    Object? user_id = null,
    Object? unit_id = null,
    Object? quantity = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? category = freezed,
    Object? level = freezed,
    Object? status = freezed,
    Object? unit = freezed,
    Object? user = freezed,
  }) {
    return _then(_$ProductDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      minimumQuantity: null == minimumQuantity
          ? _value.minimumQuantity
          : minimumQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int,
      level_id: null == level_id
          ? _value.level_id
          : level_id // ignore: cast_nullable_to_non_nullable
              as int,
      status_id: null == status_id
          ? _value.status_id
          : status_id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      unit_id: null == unit_id
          ? _value.unit_id
          : unit_id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Author?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailsModelImpl extends _ProductDetailsModel {
  _$ProductDetailsModelImpl(
      {required this.id,
      required this.productName,
      required this.description,
      required this.thumbnailImage,
      required this.price,
      required this.discount,
      required this.code,
      required this.availableQuantity,
      required this.minimumQuantity,
      this.expirationDate = '',
      required this.view,
      required this.category_id,
      required this.level_id,
      required this.status_id,
      required this.user_id,
      required this.unit_id,
      required this.quantity,
      required this.created_at,
      required this.updated_at,
      this.category,
      this.level,
      this.status,
      this.unit,
      this.user})
      : super._();

  factory _$ProductDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String productName;
  @override
  final String description;
  @override
  final String thumbnailImage;
  @override
  final String price;
  @override
  final String discount;
  @override
  final String code;
  @override
  final int availableQuantity;
  @override
  final int minimumQuantity;
  @override
  @JsonKey()
  final String expirationDate;
  @override
  final int view;
  @override
  final int category_id;
  @override
  final int level_id;
  @override
  final int status_id;
  @override
  final int user_id;
  @override
  final int unit_id;
  @override
  final String quantity;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final Category? category;
  @override
  final Level? level;
  @override
  final Status? status;
  @override
  final Unit? unit;
  @override
  final Author? user;

  @override
  String toString() {
    return 'ProductDetailsModel(id: $id, productName: $productName, description: $description, thumbnailImage: $thumbnailImage, price: $price, discount: $discount, code: $code, availableQuantity: $availableQuantity, minimumQuantity: $minimumQuantity, expirationDate: $expirationDate, view: $view, category_id: $category_id, level_id: $level_id, status_id: $status_id, user_id: $user_id, unit_id: $unit_id, quantity: $quantity, created_at: $created_at, updated_at: $updated_at, category: $category, level: $level, status: $status, unit: $unit, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.minimumQuantity, minimumQuantity) ||
                other.minimumQuantity == minimumQuantity) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.level_id, level_id) ||
                other.level_id == level_id) &&
            (identical(other.status_id, status_id) ||
                other.status_id == status_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.unit_id, unit_id) || other.unit_id == unit_id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        productName,
        description,
        thumbnailImage,
        price,
        discount,
        code,
        availableQuantity,
        minimumQuantity,
        expirationDate,
        view,
        category_id,
        level_id,
        status_id,
        user_id,
        unit_id,
        quantity,
        created_at,
        updated_at,
        category,
        level,
        status,
        unit,
        user
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsModelImplCopyWith<_$ProductDetailsModelImpl> get copyWith =>
      __$$ProductDetailsModelImplCopyWithImpl<_$ProductDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailsModel extends ProductDetailsModel {
  factory _ProductDetailsModel(
      {required final int id,
      required final String productName,
      required final String description,
      required final String thumbnailImage,
      required final String price,
      required final String discount,
      required final String code,
      required final int availableQuantity,
      required final int minimumQuantity,
      final String expirationDate,
      required final int view,
      required final int category_id,
      required final int level_id,
      required final int status_id,
      required final int user_id,
      required final int unit_id,
      required final String quantity,
      required final String created_at,
      required final String updated_at,
      final Category? category,
      final Level? level,
      final Status? status,
      final Unit? unit,
      final Author? user}) = _$ProductDetailsModelImpl;
  _ProductDetailsModel._() : super._();

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get productName;
  @override
  String get description;
  @override
  String get thumbnailImage;
  @override
  String get price;
  @override
  String get discount;
  @override
  String get code;
  @override
  int get availableQuantity;
  @override
  int get minimumQuantity;
  @override
  String get expirationDate;
  @override
  int get view;
  @override
  int get category_id;
  @override
  int get level_id;
  @override
  int get status_id;
  @override
  int get user_id;
  @override
  int get unit_id;
  @override
  String get quantity;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  Category? get category;
  @override
  Level? get level;
  @override
  Status? get status;
  @override
  Unit? get unit;
  @override
  Author? get user;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailsModelImplCopyWith<_$ProductDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
