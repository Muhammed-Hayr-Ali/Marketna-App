// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsImpl _$$CommentsImplFromJson(Map<String, dynamic> json) =>
    _$CommentsImpl(
      id: json['id'] as int,
      comment: json['comment'] as String? ?? '',
      user_id: json['user_id'] as int,
      product_id: json['product_id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$CommentsImplToJson(_$CommentsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'user_id': instance.user_id,
      'product_id': instance.product_id,
      'user': instance.user,
      'created_at': instance.created_at,
    };
