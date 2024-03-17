import 'package:freezed_annotation/freezed_annotation.dart';

part 'level.freezed.dart';
part 'level.g.dart';

@freezed
class Level with _$Level{
  const factory Level({
    required int id,
    required String name,
    @Default('') String description,
    @Default('') String image,
  }) = _Level;

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
  factory Level.empty() => const Level(id: 0, name: '', description: '', image: '');
}