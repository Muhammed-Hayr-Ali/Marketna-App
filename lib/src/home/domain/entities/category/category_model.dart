import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

List<CategoryModel> categoryModelListFromJson(List<dynamic> json) =>
    List<CategoryModel>.from(json.map((x) => CategoryModel.fromJson(x)));

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    String? name,
    String? description,
    String? image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  factory CategoryModel.fromMap(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  factory CategoryModel.fromList(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  factory CategoryModel.empty() => const CategoryModel(
        id: 0,
        name: '',
        description: '',
        image: '',
      );
}
