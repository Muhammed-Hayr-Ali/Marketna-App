// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailsModelImpl _$$ProductDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailsModelImpl(
      id: json['id'] as int,
      productName: json['productName'] as String,
      description: json['description'] as String,
      thumbnailImage: json['thumbnailImage'] as String,
      price: json['price'] as String,
      discount: json['discount'] as String,
      code: json['code'] as String,
      availableQuantity: json['availableQuantity'] as int,
      minimumQuantity: json['minimumQuantity'] as int,
      expirationDate: json['expirationDate'] as String? ?? '',
      view: json['view'] as int,
      category_id: json['category_id'] as int,
      level_id: json['level_id'] as int,
      status_id: json['status_id'] as int,
      user_id: json['user_id'] as int,
      unit_id: json['unit_id'] as int,
      quantity: json['quantity'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      level: json['level'] == null
          ? null
          : Level.fromJson(json['level'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(json['unit'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : Author.fromJson(json['user'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Images>[],
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => Comments.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Comments>[],
      rating: (json['rating'] as List<dynamic>?)
              ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Rating>[],
    );

Map<String, dynamic> _$$ProductDetailsModelImplToJson(
        _$ProductDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'description': instance.description,
      'thumbnailImage': instance.thumbnailImage,
      'price': instance.price,
      'discount': instance.discount,
      'code': instance.code,
      'availableQuantity': instance.availableQuantity,
      'minimumQuantity': instance.minimumQuantity,
      'expirationDate': instance.expirationDate,
      'view': instance.view,
      'category_id': instance.category_id,
      'level_id': instance.level_id,
      'status_id': instance.status_id,
      'user_id': instance.user_id,
      'unit_id': instance.unit_id,
      'quantity': instance.quantity,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'category': instance.category,
      'level': instance.level,
      'status': instance.status,
      'unit': instance.unit,
      'user': instance.user,
      'images': instance.images,
      'comments': instance.comments,
      'rating': instance.rating,
    };
