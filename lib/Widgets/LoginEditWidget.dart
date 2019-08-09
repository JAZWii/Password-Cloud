import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';

class LoginEditWidget extends StatelessWidget {
  final Login login;
  @override
  LoginEditWidget({Key key, @required this.login}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
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
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Title
            Text((this.login.id == null)? "Create New Login":"Modify Login",
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-Bold",
                    letterSpacing: .6)),

            //Login Name
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Login Name",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Asuna Google Account",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.login.loginName),
            ),

            //full Name
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Login Email",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Asuna Kazuya",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.login.email),
            ),

            //Username
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Login Username",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "AsunaLee",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.login.username),
            ),

            //Website
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Login Website",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "google.com",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.login.website),
            ),

            //Password
            SizedBox(height: ScreenUtil.getInstance().setHeight(23)),
            Text("Login Password",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Not your birthday or your dog",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.login.password),
            ),
          ],
        ),
      ),
    );
  }
}
