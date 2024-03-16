// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      email: json['email'] as String,
      roleId: json['roleId'] as int? ?? 3,
      expirationDate: json['expirationDate'],
      gender: json['gender'] as String? ?? 'Unspecified',
      dateBirth: json['dateBirth'] as String?,
      status: json['status'] as String?,
      profile: json['profile'] as String?,
      emailVerifiedAt: json['emailVerifiedAt'],
      defaultAddress: json['defaultAddress'] as int?,
      roleName: json['roleName'] as String? ?? 'User',
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'roleId': instance.roleId,
      'expirationDate': instance.expirationDate,
      'gender': instance.gender,
      'dateBirth': instance.dateBirth,
      'status': instance.status,
      'profile': instance.profile,
      'emailVerifiedAt': instance.emailVerifiedAt,
      'defaultAddress': instance.defaultAddress,
      'roleName': instance.roleName,
    };
