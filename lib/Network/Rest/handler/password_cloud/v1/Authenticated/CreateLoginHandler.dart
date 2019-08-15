import 'package:flutter/material.dart';
import 'package:password_cloud/Data/Pojo/ResponseData/LoginResponse.dart';
import 'package:password_cloud/Network/Rest/handler/password_cloud/v1/Base/BaseHandler.dart';

typedef void OnSuccess(LoginResponse response);

class CreateLoginHandler extends BaseHandler {
  final OnSuccess onSuccess;

  const CreateLoginHandler(
      {
        @required OnTaskComplete onTaskComplete,
        @required OnTaskStart onTaskStart,
        @required OnShowWarningMessage onShowWarningMessage,
        //@required OnGetAppLocalizations onGetAppLocalizations,
        @required OnGetContext getContext,
        @required this.onSuccess})
      : super(
      onShowWarningMessage: onShowWarningMessage,
      //onGetAppLocalizations: onGetAppLocalizations,
      getContext: getContext,
      onTaskStart: onTaskStart,
      onTaskComplete: onTaskComplete);

  void onInvalidAccount() {
    //onShowWarningMessage(onGetAppLocalizations().errorServerInvalidAccount);
  }
}