import 'package:json_annotation/json_annotation.dart';

part 'Login.g.dart';

@JsonSerializable()
class Login {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "login_name", nullable: false)
  final String loginName;

  @JsonKey(name: "website")
  final String website;

  @JsonKey(name: "email")
  final String email;

  @JsonKey(name: "username")
  final String username;

  @JsonKey(name: "password", nullable: false)
  final String password;

  @JsonKey(name: "create_date")
  final DateTime createDate;

  Login({
    this.id,
    this.loginName,
    this.website,
    this.email,
    this.username,
    this.password,
    this.createDate
  });

  factory Login.fromJson(Map < String, dynamic > json) => _$LoginFromJson(json);
  Map<String, dynamic> toJson() => _$LoginToJson(this);
/*
  Login();

  Login.fromList(int id, String loginName, String website, String email, String username, String password, DateTime createDate) {
    this.id = id;
    this.loginName = loginName;
    this.website = website;
    this.email = email;
    this.username = username;
    this.password = password;
    this.createDate = createDate;
  }
*/

}