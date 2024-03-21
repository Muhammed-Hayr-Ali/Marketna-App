import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_user.freezed.dart';
part 'current_user.g.dart';

@freezed
class CurrentUser with _$CurrentUser {
  const factory CurrentUser({
    required int id,
    @Default('') String name,
    @Default('') String profile,
  }) = _CurrentUser;

  factory CurrentUser.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserFromJson(json);
  factory CurrentUser.empty() => const CurrentUser(
        id: 0,
        name: '',
        profile: '',
      );
}
