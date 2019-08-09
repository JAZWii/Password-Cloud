import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Widgets/Background.dart';
import 'AddressesPage.dart';
import 'LoginsPage.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPage createState() => new _ServicesPage();
}

class _ServicesPage extends State<ServicesPage> {

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
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFD7267),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.lock), text: "Logins",),
                Tab(icon: Icon(Icons.home), text: "Addresses"),
              ],
            ),
            title: Text('Password Cloud'),
          ),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Background(),
              TabBarView(
                children: [
                  LoginsPage(),
                  AddressesPage()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}