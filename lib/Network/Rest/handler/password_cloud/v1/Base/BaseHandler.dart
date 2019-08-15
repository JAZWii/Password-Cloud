import 'package:flutter/material.dart';
import 'package:http/http.dart';

typedef void OnTaskComplete();
typedef void OnTaskStart();
typedef void OnFailure();
typedef void OnShowWarningMessage(String message);
//typedef AppLocalizations OnGetAppLocalizations();
typedef BuildContext OnGetContext();

class BaseHandler {
  @required
  final OnTaskComplete onTaskComplete;
  @required
  final OnTaskStart onTaskStart;
  @required
  final OnShowWarningMessage onShowWarningMessage;
  @required
  //final OnGetAppLocalizations onGetAppLocalizations;
  final OnFailure onFailure;
  final OnGetContext getContext;

  const BaseHandler({
    @required this.onTaskComplete,
    @required this.onTaskStart,
    @required this.onShowWarningMessage,
    //@required this.onGetAppLocalizations,
    @required this.getContext,
    this.onFailure,
  });

  bool commonChecks(Response response, dynamic task) {
    switch (response.statusCode) {
      case 401:
        print("access token expired suddenly");
        //preferencesDatabase.setOauthExpiry(0);
        task.submit();
        return false;
        break;
    }

    return true;
  }

  void onError(int code, String error, Object response) {
    //todo report Crashlytics
//    if(response != null) {
//      Crashlytics.logException(new Exception("code: " + code + ", error: " + error + ", response:" + response.toString()));
//    } else {
//      Crashlytics.logException(new Exception("code: " + code + ", error: " + error));
//    }

    print("code: " + code.toString() + ", error: " + error);
    //onShowWarningMessage(onGetAppLocalizations().errorServerUnknown);

    if(onFailure != null)
      onFailure();
  }
}