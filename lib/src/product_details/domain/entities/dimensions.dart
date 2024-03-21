import 'package:freezed_annotation/freezed_annotation.dart';

part 'dimensions.freezed.dart';
part 'dimensions.g.dart';

List<Dimensions> dimensionsListFromJson(List<dynamic> json) =>
    List<Dimensions>.from(json.map((x) => Dimensions.fromJson(x)));

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    required int id,
    @Default("") String length,
    @Default("") String width,
    @Default("") String height,
    @Default("") String depth,
    @Default("") String thickness,
    @Default("") String unit,
    @Default("") String price,
    required int availableQuantity,
    // ignore: non_constant_identifier_names
    required int product_id,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);


  factory Dimensions.empty() => const Dimensions(
        id: 0,
        length: '',
        width: '',
        height: '',
        depth: '',
        thickness: '',
        unit: '',
        price: '',
        product_id: 0,
        availableQuantity: 0,
      );
}
