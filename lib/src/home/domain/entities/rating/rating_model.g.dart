// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      id: json['id'] as int?,
      rating: json['rating'] as String?,
      userId: json['userId'] as int?,
      productId: json['productId'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'userId': instance.userId,
      'productId': instance.productId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
