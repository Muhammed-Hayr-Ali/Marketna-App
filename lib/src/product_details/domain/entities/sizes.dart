import 'package:freezed_annotation/freezed_annotation.dart';

part 'sizes.freezed.dart';
part 'sizes.g.dart';

List<Sizes> sizesListFromJson(List<dynamic> json) =>
    List<Sizes>.from(json.map((x) => Sizes.fromJson(x)));

@freezed
class Sizes with _$Sizes {
  const factory Sizes({
    required int id,
    @Default("") String name,
    @Default("") String value,
    @Default("") String price,
    required int availableQuantity,
    // ignore: non_constant_identifier_names
    required int product_id,
  }) = _Sizes;

  factory Sizes.fromJson(Map<String, dynamic> json) => _$SizesFromJson(json);

  factory Sizes.empty() => const Sizes(
        id: 0,
        name: '',
        value: '',
        price: '',
        availableQuantity: 0,
        product_id: 0,
      );
}
