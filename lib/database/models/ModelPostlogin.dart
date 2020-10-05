import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ModelPostlogin.g.dart';

@JsonSerializable()
@entity
class ModelPostLogin {
  final String grant_type;
  final String username;
  final String password;
  @primaryKey
  final String access_token;
  final String expires;

  ModelPostLogin(
      {this.grant_type,
      this.username,
      this.password,
      this.access_token,
      this.expires});

  factory ModelPostLogin.fromJson(Map<String, dynamic> json) =>
      _$ModelPostLoginFromJson(json);

  Map<String, dynamic> toMap() => _$ModelPostLoginToJson(this);

/*  Map toMap() {
    var map = new Map<String, dynamic>();
    map["grant_type"] = grant_type;
    map["username"] = username;
    map["password"] = password;
    return map;
  }*/
}
