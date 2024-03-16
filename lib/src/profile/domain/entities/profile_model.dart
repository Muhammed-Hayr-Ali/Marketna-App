import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required int id,
    @Default('') String name,
    @Default('') String phoneNumber,
    required String email,
    @Default(3) int roleId,
    dynamic expirationDate,
    @Default('Unspecified') String? gender,
    String? dateBirth,
    String? status,
    String? profile,
    dynamic emailVerifiedAt,
    int? defaultAddress,
    @Default('User') String roleName,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
  factory ProfileModel.empty() => const ProfileModel(
      id: 0,
      name: '',
      phoneNumber: '',
      email: '',
      roleId: 0,
      expirationDate: null,
      gender: null,
      dateBirth: null,
      status: null,
      profile: null,
      emailVerifiedAt: null,
      defaultAddress: null,
      roleName: '');
}
