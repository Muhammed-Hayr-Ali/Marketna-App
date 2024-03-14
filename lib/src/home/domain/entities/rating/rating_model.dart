import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

List<RatingModel> ratingModelListFromJson(List<dynamic> json) =>
    List<RatingModel>.from(json.map((x) => RatingModel.fromJson(x)));

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    int? id,
    String? rating,
    int? userId,
    int? productId,
    String? createdAt,
    String? updatedAt,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
  factory RatingModel.fromMap(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
  factory RatingModel.fromList(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
  factory RatingModel.empty() => const RatingModel(
        id: 0,
        rating: '',
        userId: 0,
        productId: 0,
        createdAt: '',
        updatedAt: '',
      );
}
