import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Address.dart';

class AddressEditWidget extends StatelessWidget {
  final Address address;
  @override
  AddressEditWidget({Key key, @required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(1400),
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
            Text((this.address.id == null)? "Create New Address":"Modify Address",
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-Bold",
                    letterSpacing: .6)),

            //Address Name
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Address Name",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Aramex Italy Address",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.addressName),
            ),

            //full Name
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Full Name",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Asuna Kazuya",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.fullName),
            ),

            //Address 1
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Address 1",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "4230 Luca Street",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.address1),
            ),

            //Address 2
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
            Text("Address 2",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Second floor unit 3",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.address2),
            ),

            //City
            SizedBox(height: ScreenUtil.getInstance().setHeight(23)),
            Text("City",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "London",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.city),
            ),

            //State
            SizedBox(height: ScreenUtil.getInstance().setHeight(23)),
            Text("State",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "California",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.state),
            ),

            //ZIP
            SizedBox(height: ScreenUtil.getInstance().setHeight(23)),
            Text("ZIP",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "32651",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.zip),
            ),

            //Phone
            SizedBox(height: ScreenUtil.getInstance().setHeight(23)),
            Text("Phone",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "+YYXXXXXXXX",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.phone),
            ),

            //Country
            SizedBox(height: ScreenUtil.getInstance().setHeight(23)),
            Text("Country",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Japan",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              controller: TextEditingController(text: this.address.country),
            ),
          ],
        ),
      ),
    );
  }
}
