import 'package:json_annotation/json_annotation.dart';

part 'LoginForm.g.dart';

@JsonSerializable()
class LoginForm {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "login_name")
  final String loginName;

  @JsonKey(name: "website")
  final String website;

  @JsonKey(name: "email")
  final String email;

  @JsonKey(name: "username")
  final String username;

  @JsonKey(name: "password")
  final String password;

  @JsonKey(name: "create_date")
  final DateTime createDate;

  LoginForm({
    this.id,
    this.loginName,
    this.website,
    this.email,
    this.username,
    this.password,
    this.createDate
  });

  factory LoginForm.fromJson(Map < String, dynamic > json) => _$LoginFormFromJson(json);
  Map<String, dynamic> toJson() => _$LoginFormToJson(this);
}