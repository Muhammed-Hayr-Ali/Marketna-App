// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorsImpl _$$ColorsImplFromJson(Map<String, dynamic> json) => _$ColorsImpl(
      id: json['id'] as int,
      name: json['name'] as String? ?? "",
      value: json['value'] as String? ?? "",
      price: json['price'] as String? ?? "",
      availableQuantity: json['availableQuantity'] as int,
      product_id: json['product_id'] as int,
    );

Map<String, dynamic> _$$ColorsImplToJson(_$ColorsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'price': instance.price,
      'availableQuantity': instance.availableQuantity,
      'product_id': instance.product_id,
    };
