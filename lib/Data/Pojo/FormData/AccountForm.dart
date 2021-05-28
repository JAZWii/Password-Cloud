import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AccountForm {
  AccountForm();

  factory AccountForm.fromJson(Map<String, dynamic> json) =>
      null; //_$AccountFormFromJson(json);
  Map<String, dynamic> toJson() => null; //_$AccountFormToJson(this);
}
