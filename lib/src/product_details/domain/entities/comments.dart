// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketna_app/src/product_details/domain/entities/user.dart';

part 'comments.freezed.dart';
part 'comments.g.dart';

List<Comments> commentsListFromJson(List<dynamic> json) => List<Comments>.from(
      json.map((x) => Comments.fromJson(x)),
    );

@freezed
class Comments with _$Comments {
  const factory Comments({
    required int id,
    @Default('') String comment,
    required int user_id,
    required int product_id,
    required User user,
    required String created_at,
  }) = _Comments;

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
  factory Comments.empty() => Comments(
        id: 0,
        comment: '',
        user_id: 0,
        product_id: 0,
        user: User.empty(),
        created_at: '',
      );
}
