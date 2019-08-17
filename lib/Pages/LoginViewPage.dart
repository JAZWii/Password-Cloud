import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Widgets/Background.dart';
import 'ChangePasswordPage.dart';
import 'LoginEditPage.dart';
import 'PasswordViewerPage.dart';


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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  child: Text("Show Password"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Change Password"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Modify Login Info"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Delete Login"),
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PasswordViewerPage(login: this.login,)),
                  );
                } else if (value == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ChangePasswordPage(login: this.login,)),
                  );
                } else if (value == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LoginEditPage(login: this.login,)),
                  );
                } else if (value == 4) {
                      () async {
                    final ConfirmAction action = await _asyncConfirmDialog(
                        context);
                    if (action == ConfirmAction.ACCEPT) {
                      //TODO Delete Request
                    }
                  };
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
                                LoginRow("Login Password :", "* * * * *"),
                              ]
                          ),
                        )
                    ),

                    //Show Password Button
                    SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            width: ScreenUtil.getInstance().setWidth(600),
                            height: ScreenUtil.getInstance().setHeight(100),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xFF17ead9),
                                  Color(0xFF6078ea)
                                ]),
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFF6078ea).withOpacity(.3),
                                      offset: Offset(0.0, 8.0),
                                      blurRadius: 8.0)
                                ]),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PasswordViewerPage(
                                              login: this.login,)),
                                  );
                                },
                                child: Center(
                                  child: Text("SHOW PASSWORD",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 18,
                                          letterSpacing: 1.0)),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(40)),

                  ],
                ),
              ),
            )
          ],
        ),
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

enum ConfirmAction { CANCEL, ACCEPT }

Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Reset settings?'),
        content: const Text(
            'This will reset your device to its default factory settings.'),
        actions: <Widget>[
          FlatButton(
            child: const Text('CANCEL'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.CANCEL);
            },
          ),
          FlatButton(
            child: const Text('ACCEPT'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.ACCEPT);
            },
          )
        ],
      );
    },
  );
}