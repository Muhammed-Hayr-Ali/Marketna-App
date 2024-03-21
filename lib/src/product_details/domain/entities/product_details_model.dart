// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketna_app/src/product_details/domain/entities/author.dart';
import 'package:marketna_app/src/product_details/domain/entities/category.dart';
import 'package:marketna_app/src/product_details/domain/entities/level.dart';
import 'package:marketna_app/src/product_details/domain/entities/status.dart';
import 'package:marketna_app/src/product_details/domain/entities/unit.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  ProductDetailsModel._();
  factory ProductDetailsModel({
    required int id,
    required String productName,
    required String description,
    required String thumbnailImage,
    required String price,
    required String discount,
    required String code,
    required int availableQuantity,
    required int minimumQuantity,
    @Default('') String expirationDate,
    required int view,
    required int category_id,
    required int level_id,
    required int status_id,
    required int user_id,
    required int unit_id,
    required String quantity,
    required String created_at,
    required String updated_at,
    Category? category,
    Level? level,
    Status? status,
    Unit? unit,
    Author? user,
    // @Default(<Images>[]) List<Images> images,
    // @Default(<Comments>[]) List<Comments> comments,
    // @Default(<Rating>[]) List<Rating> rating,
    // @Default(<Dimensions>[]) List<Dimensions> dimensions,
    // @Default(<Colors>[]) List<Dimensions> colors,
    // @Default(<Sizes>[]) List<Dimensions> sizes,
    // @Default(<Weights>[]) List<Dimensions> weights,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.blank() => ProductDetailsModel.empty();
  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);

  factory ProductDetailsModel.empty() => ProductDetailsModel(
        id: 0,
        productName: '',
        description: '',
        thumbnailImage: '',
        price: '',
        discount: '',
        code: '',
        availableQuantity: 0,
        minimumQuantity: 0,
        expirationDate: '',
        view: 0,
        category_id: 0,
        level_id: 0,
        status_id: 0,
        user_id: 0,
        unit_id: 0,
        quantity: '',
        created_at: '',
        updated_at: '',
        category: Category.empty(),
        level: Level.empty(),
        status: Status.empty(),
        unit: Unit.empty(),
        user: Author.empty(),
        // images: [],
        // comments: [],
        // rating: [],
        // dimensions: [],
        // colors: [],
        // sizes: [],
        // weights: [],
      );
}
