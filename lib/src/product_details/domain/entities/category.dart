import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';
@freezed
class Category with _$Category{
  const factory Category({
    required int id,
    required String name,
    @Default('') String description,
    @Default('') String image,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
  factory Category.empty() => const Category(id: 0, name: '', description: '', image: ''); 
}