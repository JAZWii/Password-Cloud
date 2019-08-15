import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:password_cloud/Data/Pojo/FormData/LoginForm.dart';
import 'package:password_cloud/Network/Rest/Constants/RouteConstants.dart';

class LoginService {
  static const String prefix = RouteConstants.AuthenticatedLogin;

  static Future<Response> addLogin(LoginForm form, BuildContext context) async {
    /*return preferencesDatabase
        .getCommonHttpHeaders(includeAuth: true, context: context)
        .then((Map<String, String> headers) async {
      return await http.post(prefix + "login",
          headers: headers, body: json.encode(form.toJson()));
    });*/
  }
}