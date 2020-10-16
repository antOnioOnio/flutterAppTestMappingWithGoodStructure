// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ModelPostlogin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelPostLogin _$ModelPostLoginFromJson(Map<String, dynamic> json) {
  return ModelPostLogin(
    grant_type: json['grant_type'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    access_token: json['access_token'] as String,
    expires: json['expires'] as String,
  );
}

Map<String, dynamic> _$ModelPostLoginToJson(ModelPostLogin instance) =>
    <String, dynamic>{
      'grant_type': instance.grant_type,
      'username': instance.username,
      'password': instance.password,/*,
      'access_token': instance.access_token,
      'expires': instance.expires,*/
    };
