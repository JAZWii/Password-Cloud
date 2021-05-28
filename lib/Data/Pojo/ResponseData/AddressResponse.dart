import 'package:json_annotation/json_annotation.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Address.dart';

@JsonSerializable()
class AddressResponse extends Object {
  //}with _$AddressResponseSerializerMixin{
  @JsonKey(name: "address")
  final Address address;

  AddressResponse({this.address});

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      null; //_$AddressResponseFromJson(json);
}
