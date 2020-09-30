// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postlogin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostLogin _$PostLoginFromJson(Map<String, dynamic> json) {
  return PostLogin(
    grant_type: json['grant_type'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    access_token: json['access_token'] as String,
    expires: json['expires'] as String,
  );
}

Map<String, dynamic> _$PostLoginToJson(PostLogin instance) => <String, dynamic>{
      'grant_type': instance.grant_type,
      'username': instance.username,
      'password': instance.password,
/*      'access_token': instance.access_token,
      'expires': instance.expires,*/
    };
