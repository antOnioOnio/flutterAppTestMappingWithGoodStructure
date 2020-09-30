import 'package:json_annotation/json_annotation.dart';

part 'postlogin.g.dart';

@JsonSerializable()
class PostLogin {
  final String grant_type;
  final String username;
  final String password;
  final String access_token;
  final String expires;

  PostLogin(
      {this.grant_type,
      this.username,
      this.password,
      this.access_token,
      this.expires});

  factory PostLogin.fromJson(Map<String, dynamic> json) =>
      _$PostLoginFromJson(json);

  Map<String, dynamic> toMap() => _$PostLoginToJson(this);

/*  Map toMap() {
    var map = new Map<String, dynamic>();
    map["grant_type"] = grant_type;
    map["username"] = username;
    map["password"] = password;
    return map;
  }*/
}
