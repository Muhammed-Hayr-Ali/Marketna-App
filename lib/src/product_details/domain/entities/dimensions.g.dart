// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dimensions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DimensionsImpl _$$DimensionsImplFromJson(Map<String, dynamic> json) =>
    _$DimensionsImpl(
      id: json['id'] as int,
      length: json['length'] as String? ?? "",
      width: json['width'] as String? ?? "",
      height: json['height'] as String? ?? "",
      depth: json['depth'] as String? ?? "",
      thickness: json['thickness'] as String? ?? "",
      unit: json['unit'] as String? ?? "",
      price: json['price'] as String? ?? "",
      availableQuantity: json['availableQuantity'] as int,
      product_id: json['product_id'] as int,
    );

Map<String, dynamic> _$$DimensionsImplToJson(_$DimensionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
      'thickness': instance.thickness,
      'unit': instance.unit,
      'price': instance.price,
      'availableQuantity': instance.availableQuantity,
      'product_id': instance.product_id,
    };
