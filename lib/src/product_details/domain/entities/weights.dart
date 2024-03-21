import 'package:freezed_annotation/freezed_annotation.dart';

part 'weights.freezed.dart';
part 'weights.g.dart';

List<Weights> weightListFromJson(List<dynamic> json) => List<Weights>.from(
      json.map((x) => Weights.fromJson(x)),
    );

@freezed
class Weights with _$Weights {
  const factory Weights({
    required int id,
    @Default("") String name,
    @Default("") String value,
    @Default("") String price,
    required int availableQuantity,
    // ignore: non_constant_identifier_names
    required int product_id,
  }) = _Weights;

  factory Weights.fromJson(Map<String, dynamic> json) => _$WeightsFromJson(json);

  factory Weights.empty() => const Weights(
        id: 0,
        name: '',
        value: '',
        price: '',
        availableQuantity: 0,
        product_id: 0,
      );
}
