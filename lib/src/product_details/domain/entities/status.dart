import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class Status with _$Status {
  const factory Status({
    required int id,
    required String name,
    @Default('') String description,
    @Default('') String image,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
  factory Status.empty() => const Status(id: 0, name: '', description: '', image: '');
}
