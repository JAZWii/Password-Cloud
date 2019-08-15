import 'dart:convert';

import 'package:http/http.dart';
import 'package:password_cloud/Data/Pojo/FormData/LoginForm.dart';
import 'package:password_cloud/Data/Pojo/ResponseData/LoginResponse.dart';
import 'package:password_cloud/Exception/Exception/APIException.dart';
import 'package:password_cloud/Network/Rest/Constants/NetworkMessageConstants.dart';
import 'package:password_cloud/Network/Rest/Service/password_cloud/v1/Authenticated/LoginService.dart';
import 'package:password_cloud/Network/Rest/handler/password_cloud/v1/Authenticated/CreateLoginHandler.dart';

class CreateLoginTask  {
  final LoginForm form;
  final CreateLoginHandler handler;

  CreateLoginTask (this.form, this.handler);

  void submit() {
    handler.onTaskStart();
    LoginService.addLogin(form, handler.getContext()).then((Response response) {
      final responseJson = json.decode(response.body);
      if(!handler.commonChecks(response, this))
        return;

      handler.onTaskComplete();

      switch (response.statusCode) {
        case 200:
          handler.onSuccess(LoginResponse.fromJson(responseJson));
          break;
        case 400:
          APIException exception = APIException.fromJson(responseJson);
          if (exception == null || exception.title == null) {
            handler.onError(
                response.statusCode, "UNKNOWN EXCEPTION FORMAT", response.body);
            break;
          }

          if (exception.title == NetworkMessageConstants.LOGICAL_ERROR) {
            for (String error in exception.errors) {
              switch (error) {
                default:
                  handler.onError(
                      response.statusCode,
                      "UNKNOWN_ERROR: " + exception.title + " > " + error,
                      response.body);
                  break;
              }
            }
          } else if (exception.title == NetworkMessageConstants.INVALID_FORM) {
            for (String error in exception.errors) {
              switch (error) {
                default:
                  handler.onError(
                      response.statusCode,
                      "UNKNOWN_ERROR: " + exception.title + " > " + error,
                      response.body);
                  break;
              }
            }
          } else if (exception.title == NetworkMessageConstants.SERVICE_ERROR) {
            for (String error in exception.errors) {
              switch (error) {
                default:
                  handler.onError(
                      response.statusCode,
                      "UNKNOWN_ERROR: " + exception.title + " > " + error,
                      response.body);
                  break;
              }
            }
          } else {
            handler.onError(response.statusCode,
                "UNKNOWN_EXCEPTION_TITLE: " + exception.title, response.body);
          }
          break;
        default:
          handler.onError(
              response.statusCode,
              "UNKNOWN_STATUS_CODE: " + response.statusCode.toString(),
              response.body);
          break;
      }
    });
  }
}