// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUserImpl _$$CurrentUserImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUserImpl(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      profile: json['profile'] as String? ?? '',
    );

Map<String, dynamic> _$$CurrentUserImplToJson(_$CurrentUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile': instance.profile,
    };
