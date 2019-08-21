import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Widgets/Background.dart';
import 'dart:math';

import 'ConfirmPasswordPage.dart';
import 'PasswordGeneratorPage.dart';

class ChangePasswordPage extends StatefulWidget {
  final Login login;

  @override
  ChangePasswordPage({Key key, @required this.login}) : super(key: key);

  @override
  _ChangePasswordPage createState() => new _ChangePasswordPage();
}

class _ChangePasswordPage extends State<ChangePasswordPage> {
  String newPassword ;
  BuildContext _scaffoldContext;

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
          title: const Text('Change Password'),
          backgroundColor: Color(0xFFFD7267),
        ),
        body: Builder(
          builder: (BuildContext context) {
            _scaffoldContext = context;
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Background(),
                Column(
                    children: <Widget>[

                      Text("Old Password"),
                      Text(this.widget.login.password),

                      Text("New Password"),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          autofocus: true,
                          controller: new TextEditingController(text: newPassword),
                          decoration: InputDecoration(

                              hintText: "New Password",
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 12.0)),
                        ),
                      ),

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
                                        color: Color(0xFF6078ea).withOpacity(
                                            .3),
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 8.0)
                                  ]),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    setState(()async =>  newPassword = await _generateNewPassword(context));
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
                      SizedBox(
                          height: ScreenUtil.getInstance().setHeight(50)),

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
                                        color: Color(0xFF6078ea).withOpacity(
                                            .3),
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 8.0)
                                  ]),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    if(newPassword.isNotEmpty){
                                      final snackBar = SnackBar(
                                        content: Text("New Password can't be empty!"),
                                        action: SnackBarAction(
                                          label: 'Hide',
                                          onPressed: () {},
                                        ),
                                      );
                                      Scaffold.of(_scaffoldContext).showSnackBar(snackBar);
                                    }else if (this.widget.login.password == newPassword){
                                      final snackBar = SnackBar(
                                        content: Text("New Password can't be like old one!"),
                                        action: SnackBarAction(
                                          label: 'Hide',
                                          onPressed: () {},
                                        ),
                                      );
                                      Scaffold.of(_scaffoldContext).showSnackBar(snackBar);
                                    }
                                    else {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConfirmPasswordPage(
                                                      login: this.widget.login,
                                                      newPassword: newPassword)));
                                    }
                                  },
                                  child: Center(
                                    child: Text("SAVE NEW PASSWORD",
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
                      SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                    ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<String> _generateNewPassword(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PasswordGeneratorPage()),
    );
     return result.t;
  }
}