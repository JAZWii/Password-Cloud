import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:password_cloud/Data/Pojo/FormData/AddressForm.dart';
import 'package:password_cloud/Network/Rest/Constants/RouteConstants.dart';

class AddressService {
  static const String prefix = RouteConstants.AuthenticatedAddress;

  static Future<Response> addAddress(AddressForm form, BuildContext context) async {
    /*return preferencesDatabase
        .getCommonHttpHeaders(includeAuth: true, context: context)
        .then((Map<String, String> headers) async {
      return await http.post(prefix + "address",
          headers: headers, body: json.encode(form.toJson()));
    });*/
  }
}