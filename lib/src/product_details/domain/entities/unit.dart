import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit.freezed.dart';
part 'unit.g.dart';

@freezed
class Unit with _$Unit {
  const factory Unit({
    required int id,
    required String name,
    @Default('') String description,
    @Default('') String image,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
  static Unit empty() {
    return const Unit(id: 0, name: '', description: '', image: '');
  }
}
