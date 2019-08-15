import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Widgets/Background.dart';
import 'LoginEditPage.dart';


class LoginViewPage extends StatelessWidget {
  final Login login;

  @override
  LoginViewPage({Key key, @required this.login}) : super(key: key);

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
        ScreenUtil(width: 750, height: 1600, allowFontScaling: true);
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Login Info'),
        backgroundColor: Color(0xFFFD7267),
        actions: <Widget>[
          // overflow menu
          PopupMenuButton<int>(
            itemBuilder: (context) =>
            [
              PopupMenuItem(
                value: 1,
                child: Text("Copy Login Password"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("modify Login"),
              ),
            ],
            onSelected: (value) {
              if (value == 1) {

              } else if (value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginEditPage(login: this.login,)),
                );
              }
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Background(),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 30.0),
              child: Column(
                children: <Widget>[

                  //Icon
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/logo.png",
                        width: ScreenUtil.getInstance().setWidth(110),
                        height: ScreenUtil.getInstance().setHeight(110),
                      ),
                      Text("LOGO",
                          style: TextStyle(
                              fontFamily: "Poppins-Bold",
                              fontSize: ScreenUtil.getInstance().setSp(46),
                              letterSpacing: .6,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                  new Container(
                      width: double.infinity,
                      height: ScreenUtil.getInstance().setHeight(900),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 15.0),
                                blurRadius: 15.0),
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, -10.0),
                                blurRadius: 10.0),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 16.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              //Table viewer
                              LoginRow("Login Name :", login.loginName),
                              LoginRow("Login Email :", login.email),
                              LoginRow("Login Username :", login.username),
                              LoginRow("Login Website :", login.website),
                              LoginRow("Login Password :", login.password),
                            ]
                        ),
                      )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget LoginRow(String title, String content) =>
      new Column(
          children: [
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Column (
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
   SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
  ]
                ),
                new Column (
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                      Text(
                        content,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFD7267),
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ]
                )
              ],
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
          ]
      );
}