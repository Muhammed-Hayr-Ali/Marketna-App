// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as int?,
      productName: json['productName'] as String?,
      thumbnailImage: json['thumbnailImage'] as String?,
      price: json['price'] as String?,
      categoryId: json['categoryId'] as int?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      rating: (json['rating'] as List<dynamic>?)
          ?.map((e) => RatingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'thumbnailImage': instance.thumbnailImage,
      'price': instance.price,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'rating': instance.rating,
    };
