import 'package:json_annotation/json_annotation.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';

@JsonSerializable()
class LoginResponse extends Object {
  //}with _$LoginResponseSerializerMixin{
  @JsonKey(name: "login")
  final Login login;

  LoginResponse({this.login});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      null; //_$LoginResponseFromJson(json);
}
