import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketna_app/src/home/domain/entities/category/category_model.dart';
import 'package:marketna_app/src/home/domain/entities/rating/rating_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

List<ProductModel> productModelListFromJson(List<dynamic> json) =>
    List<ProductModel>.from(json.map((x) => ProductModel.fromJson(x)));

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    String? productName,
    String? thumbnailImage,
    String? price,
    int? categoryId,
    CategoryModel? category,
    List<RatingModel>? rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  factory ProductModel.fromMap(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  factory ProductModel.fromList(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  factory ProductModel.empty() => ProductModel(
        id: 0,
        productName: '',
        thumbnailImage: '',
        price: '',
        categoryId: 0,
        category: CategoryModel.empty(),
        rating: [],
      );
}
