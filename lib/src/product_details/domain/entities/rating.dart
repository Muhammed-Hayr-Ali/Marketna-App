// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketna_app/src/product_details/domain/entities/user.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

List<Rating> ratingListFromJson(List<dynamic> json) =>
    List<Rating>.from(json.map((x) => Rating.fromJson(x)));

@freezed
class Rating with _$Rating {
  const factory Rating({
    required int id,
    required String rating,
    required int user_id,
    required int product_id,
    User? user,
  }) = _Rating;
  
  
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
  factory Rating.empty() =>  Rating(
        id: 0,
        rating: '',
        user_id: 0,
        product_id: 0,
        user: User.empty(),
      );
}
