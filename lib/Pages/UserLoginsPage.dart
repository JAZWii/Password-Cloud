import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Widgets/LoginListViewWidget.dart';

class UserLoginsPage extends StatefulWidget {

  _UserLoginsPage createState() => new _UserLoginsPage();
}

class _UserLoginsPage extends State<UserLoginsPage> {

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
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Image.asset("assets/image_01.png"),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Image.asset("assets/image_02.png")
                ],
              ),
              new LoginListViewWidget(),
            ]
        )
    );
  }
}