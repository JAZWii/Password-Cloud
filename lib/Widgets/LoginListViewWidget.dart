import 'package:flutter/material.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Pages/LoginViewPage.dart';

class LoginListViewWidget extends StatelessWidget {
  /*final*/List<Login> userLogins = new List();


  //DoubleColumnListViewWidget({Key key, @required this.userLogins}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    userLogins.add(new Login.fromList(1, "Steam", "www.steam.com", "jazwii@yahoo.com", "JAZWii", "jojomojo", new DateTime(10000000000)));
    userLogins.add(new Login.fromList(2, "Twitch", "www.twitch.com", "jazwii@yahoo.com", "JAZWii", "jojomojo", new DateTime(10000000000)));
    userLogins.add(new Login.fromList(3, "Battle.net", "www.battel.net", "jazwii@yahoo.com", "JAZWii", "jojomojo", new DateTime(10000000000)));
    userLogins.add(new Login.fromList(4, "UPlay", "www.uplay.com", "jazwii@yahoo.com", "JAZWii", "jojomojo", new DateTime(10000000000)));
    userLogins.add(new Login.fromList(5, "EA", "www.ea.com", "jazwii@yahoo.com", "JAZWii", "jojomojo", new DateTime(10000000000)));
    userLogins.add(new Login.fromList(6, "GE", "www.ge.com", "jazwii@yahoo.com", "JAZWii", "jojomojo", new DateTime(10000000000)));
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
                          leading: Icon(Icons.wb_sunny),
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