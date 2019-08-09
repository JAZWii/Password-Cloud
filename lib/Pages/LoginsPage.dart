import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Widgets/LoginListViewWidget.dart';
import 'package:password_cloud/Widgets/Background.dart';

import 'LoginEditPage.dart';

class LoginsPage extends StatefulWidget {

  _LoginsPage createState() => new _LoginsPage();
}

class _LoginsPage extends State<LoginsPage> {

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginEditPage(login: new Login())));
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: true,
        body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Background(),
              new LoginListViewWidget(),
            ]
        )
    );
  }
}