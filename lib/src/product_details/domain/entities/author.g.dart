// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      email: json['email'] as String,
      role_id: json['role_id'] as int,
      status: json['status'] as String? ?? '',
      profile: json['profile'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role_id': instance.role_id,
      'status': instance.status,
      'profile': instance.profile,
    };
