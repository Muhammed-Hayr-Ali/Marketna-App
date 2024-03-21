import 'package:freezed_annotation/freezed_annotation.dart';

part 'color.freezed.dart';
part 'color.g.dart';

List<Colors> colorsListFromJson(List<dynamic> json) =>
    List<Colors>.from(json.map((x) => Colors.fromJson(x)));

@freezed
class Colors with _$Colors {
  const factory Colors(
    {
    required int id,
    @Default("") String name,
    @Default("") String value,
    @Default("") String price,
    required int availableQuantity,
    // ignore: non_constant_identifier_names
    required int product_id,
  
  }) = _Colors;

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);

  factory Colors.empty() => const Colors(
            id: 0,
        name: '',
        value: '',
        price: '',
        availableQuantity: 0,
        product_id: 0,

 ); 
}
