import 'package:flutter/material.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Pages/LoginViewPage.dart';

class LoginListViewWidget extends StatelessWidget {
  /*final*/List<Login> userLogins = new List();


  //DoubleColumnListViewWidget({Key key, @required this.userLogins}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    userLogins.add(new Login(id:1, loginName:"Steam", website:"www.steam.com", email:"jazwii@yahoo.com", username:"JAZWii", password: "jojomojo",createDate: new DateTime(10000000000)));
    userLogins.add(new Login(id:2, loginName:"Twitch", website:"www.twitch.com", email:"jazwii@yahoo.com", username:"JAZWii", password:"jojomojo",createDate: new DateTime(10000000000)));
    userLogins.add(new Login(id:3, loginName:"Battle.net", website:"www.battel.net", email:"jazwii@yahoo.com", username:"JAZWii", password:"jojomojo", createDate:new DateTime(10000000000)));
    userLogins.add(new Login(id:4, loginName:"UPlay", website:"www.uplay.com", email:"jazwii@yahoo.com", username:"JAZWii", password:"jojomojo", createDate:new DateTime(10000000000)));
    userLogins.add(new Login(id:5, loginName:"EA", website:"www.ea.com", email:"jazwii@yahoo.com", username:"JAZWii", password:"jojomojo", createDate:new DateTime(10000000000)));
    userLogins.add(new Login(id:6, loginName:"GE", website:"www.ge.com", email:"jazwii@yahoo.com", username:"JAZWii", password:"jojomojo", createDate:new DateTime(10000000000)));
    // the Expanded widget lets the columns share the space

    return ListView.builder(
      itemCount: userLogins.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      // align the text to the left instead of centered
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.lock),
                          title: Text(userLogins[index].loginName),
                          subtitle: Text(userLogins[index].website),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            onTap: () =>
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginViewPage(login: userLogins[index],)),
                )
        );
      },
    );
  }
}