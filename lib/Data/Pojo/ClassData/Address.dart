import 'package:json_annotation/json_annotation.dart';

part 'Address.g.dart';

@JsonSerializable()
class Address {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "address_name", nullable: false)
  final String addressName;

  @JsonKey(name: "full_name", nullable: false)
  final String fullName;

  @JsonKey(name: "address_1", nullable: false)
  final String address1;

  @JsonKey(name: "address_2")
  final String address2;

  @JsonKey(name: "city", nullable: false)
  final String city;

  @JsonKey(name: "state", nullable: false)
  final String state;

  @JsonKey(name: "zip", nullable: false)
  final String zip;

  @JsonKey(name: "phone", nullable: false)
  final String phone;

  @JsonKey(name: "country", nullable: false)
  final String country;

  @JsonKey(name: "create_date")
  final DateTime createDate;

  Address({
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

  factory Address.fromJson(Map < String, dynamic > json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);

/*
  Address();

  Address.fromList(int id,String addressName, String fullName, String address1, String address2, String city, String state, String zip, String phone, String country, DateTime createDate) {
    this.id = id;
    this.addressName = addressName;
    this.fullName = fullName;
    this.address1 = address1;
    this.address2 = address2;
    this.city = city;
    this.state = state;
    this.zip = zip;
    this.phone = phone;
    this.country = country;
    this.createDate = createDate;
  }
  */
}