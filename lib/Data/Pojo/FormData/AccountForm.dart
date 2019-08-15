import 'package:json_annotation/json_annotation.dart';

part 'AccountForm.g.dart';

@JsonSerializable()
class AccountForm{
  AccountForm(

  );

  factory AccountForm.fromJson(Map < String, dynamic > json) => _$AccountFormFromJson(json);
  Map<String, dynamic> toJson() => _$AccountFormToJson(this);
}