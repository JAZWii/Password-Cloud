import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Widgets/LoginListViewWidget.dart';

class LoginViewPage extends StatefulWidget {
  final Login login;
  @override
  LoginViewPage({Key key, @required this.login}) : super(key: key);

  @override
  _LoginViewPage createState() => new _LoginViewPage();
}

class _LoginViewPage extends State<LoginViewPage> {

  Widget horizontalLine() =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()
      ..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1300, allowFontScaling: true);
    return new Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: true,
        body: Stack(


        )
    );
  }
}