import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;
import 'package:password_cloud/Data/Pojo/ClassData/Address.dart';
import 'package:password_cloud/Widgets/Background.dart';

import 'AddressEditPage.dart';

class AddressViewPage extends StatelessWidget {
  final Address address;
  BuildContext _scaffoldContext;

  @override
  AddressViewPage({Key key, @required this.address}) : super(key: key);

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
            title: const Text('Address Info'),
            backgroundColor: Color(0xFFFD7267),
            actions: <Widget>[
              // overflow menu
              PopupMenuButton<int>(
                itemBuilder: (context) =>
                [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Copy Address Info"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Copy Address Info + Headers"),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text("Modify Address Info"),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text("Delete Address"),
                  ),
                ],
                onSelected: (value) {
                  if (value == 1) {
                    ClipboardManager.copyToClipBoard(address.addressName + "\n"
                        + address.address1 + "\n"
                        + address.address2 + "\n"
                        + address.city + "\n"
                        + address.state + "\n"
                        + address.zip + "\n"
                        + address.country + "\n"
                        + address.phone).then((result) {
                      final snackBar = SnackBar(
                        content: Text('Copied to Clipboard'),
                        action: SnackBarAction(
                          label: 'Hide',
                          onPressed: () {},
                        ),
                      );
                      Scaffold.of(_scaffoldContext).showSnackBar(snackBar);
                    });
                  } else if (value == 2) {
                    ClipboardManager.copyToClipBoard("Address Name: " + address.addressName + "\n"
                        + "Address 1: " + address.address1 + "\n"
                        + "Address 2: " + address.address2 + "\n"
                        + "City: " + address.city + "\n"
                        + "State: " + address.state + "\n"
                        + "ZIP: " + address.zip + "\n"
                        + "Country: " + address.country + "\n"
                        + "Phone: " + address.phone).then((result) {
                      final snackBar = SnackBar(
                        content: Text('Copied to Clipboard'),
                        action: SnackBarAction(
                          label: 'Hide',
                          onPressed: () {},
                        ),
                      );
                      Scaffold.of(_scaffoldContext).showSnackBar(snackBar);
                    });
                  }else if (value == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          AddressEditPage(address: this.address,)),
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
          body: Builder(
            builder: (BuildContext context) {
              _scaffoldContext = context;
              return Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Background(),
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 28.0, right: 28.0, top: 30.0),
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
                                      fontSize: ScreenUtil.getInstance().setSp(
                                          46),
                                      letterSpacing: .6,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                              height: ScreenUtil.getInstance().setHeight(50)),

                          new Container(
                            width: double.infinity,
                            height: ScreenUtil.getInstance().setHeight(1300),
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
                                  AddressRow(
                                      "Address Name :", address.addressName),
                                  AddressRow("Address 1 :", address.address1),
                                  AddressRow("Address 2 :", address.address2),
                                  AddressRow("City :", address.city),
                                  AddressRow("State :", address.state),
                                  AddressRow("Zip code :", address.zip),
                                  AddressRow("Country :", address.country),
                                  AddressRow("Phone :", address.phone),
                                  //Table viewer
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                              height: ScreenUtil.getInstance().setHeight(50)),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        )
    );
  }

  Widget AddressRow(String title, String content) =>
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