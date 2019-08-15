import 'package:json_annotation/json_annotation.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';

part 'LoginResponse.g.dart';

@JsonSerializable()
class LoginResponse extends Object {//}with _$LoginResponseSerializerMixin{
  @JsonKey(name: "login")
  final Login login;

  LoginResponse({this.login});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}