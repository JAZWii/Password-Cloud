import 'package:flutter/material.dart';

class RouteConstants extends InheritedWidget {

  static RouteConstants of(BuildContext context) => context.inheritFromWidgetOfExactType(RouteConstants);

  const RouteConstants({Widget child, Key key}): super(key: key, child: child);

  //Main
  static const String BASE = "http://localhost:8090";
  static const String OAuth = "oauth/token";
  static const String Prefix = BASE +"/v1";

  //Types
  static const String AnonymousPrefix = Prefix + "/anonymous";
  static const String AuthenticatedPrefix = Prefix + "/authenticated";

  //Anonymous Type
  static const String AnonymousAccount = AnonymousPrefix + "/account";

  //Authenticated Type
  static const String AuthenticatedLogin = AuthenticatedPrefix + "/login";
  static const String AuthenticatedAddress = AuthenticatedPrefix + "/address";

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }
}