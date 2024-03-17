// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'images.freezed.dart';
part 'images.g.dart';

List<Images> imagesListFromJson(List<dynamic> json) => List<Images>.from(
      json.map((x) => Images.fromJson(x)),
    );

@freezed
class Images with _$Images {
  const factory Images({
    required int id,
    @Default('') String name,
    @Default('') String url,
    required int product_id,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  factory Images.empty() =>
      const Images(id: 0, name: '', url: '', product_id: 0);
}
