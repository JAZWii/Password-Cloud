import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class APIException {
  @JsonKey(name: "title")
  String title;

  @JsonKey(name: "errors")
  List<String> errors;

  APIException(this.title, this.errors);

  factory APIException.fromJson(Map<String, dynamic> json) =>
      null; //_$APIExceptionFromJson(json);
  Map<String, dynamic> toJson() => null; //_$APIExceptionToJson(this);
}
