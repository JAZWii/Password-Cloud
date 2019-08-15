import 'package:json_annotation/json_annotation.dart';

part 'AddressForm.g.dart';

@JsonSerializable()
class AddressForm {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "address_name")
  final String addressName;

  @JsonKey(name: "full_name")
  final String fullName;

  @JsonKey(name: "address_1")
  final String address1;

  @JsonKey(name: "address_2")
  final String address2;

  @JsonKey(name: "city")
  final String city;

  @JsonKey(name: "state")
  final String state;

  @JsonKey(name: "zip")
  final String zip;

  @JsonKey(name: "phone")
  final String phone;

  @JsonKey(name: "country")
  final String country;

  @JsonKey(name: "create_date")
  final DateTime createDate;

  AddressForm({
    this.id,
    this.addressName,
    this.fullName,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.zip,
    this.phone,
    this.country,
    this.createDate
  });

  factory AddressForm.fromJson(Map < String, dynamic > json) => _$AddressFormFromJson(json);
  Map<String, dynamic> toJson() => _$AddressFormToJson(this);
}