import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Data/Pojo/ClassData/Address.dart';
import 'package:password_cloud/Widgets/LoginListViewWidget.dart';

class AddressViewPage extends StatefulWidget {
  final Address address;
  @override
  AddressViewPage({Key key, @required this.address}) : super(key: key);

  @override
  _AddressViewPage createState() => new _AddressViewPage();
}

class _AddressViewPage extends State<AddressViewPage> {

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