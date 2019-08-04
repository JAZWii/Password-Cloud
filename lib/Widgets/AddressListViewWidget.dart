import 'package:flutter/material.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Address.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Login.dart';
import 'package:password_cloud/Pages/AddressViewPage.dart';

class AddressListViewWidget extends StatelessWidget {
  /*final*/List<Address> userAddresses = new List();


  //DoubleColumnListViewWidget({Key key, @required this.userLogins}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    userAddresses.add(new Address(1, "US Aramex", "Jawad Almarhoon", "Al Anwar", "2332", "Qatif", "Eastern Province", "32651", "0504742521", "Uinted States", new DateTime(10000000000)));
    userAddresses.add(new Address(2, "US DHL", "Jawad Almarhoon", "Al Anwar", "2332", "Qatif", "Eastern Province", "32651", "0504742521", "Uinted States", new DateTime(10000000000)));
    userAddresses.add(new Address(3, "US UPS", "Jawad Almarhoon", "Al Anwar", "2332", "Qatif", "Eastern Province", "32651", "0504742521", "Uinted States", new DateTime(10000000000)));
    userAddresses.add(new Address(4, "US Wasil", "Jawad Almarhoon", "Al Anwar", "2332", "Qatif", "Eastern Province", "32651", "0504742521", "Uinted States", new DateTime(10000000000)));
    userAddresses.add(new Address(5, "US FedEx", "Jawad Almarhoon", "Al Anwar", "2332", "Qatif", "Eastern Province", "32651", "0504742521", "Uinted States", new DateTime(10000000000)));
    userAddresses.add(new Address(6, "US China", "Jawad Almarhoon", "Al Anwar", "2332", "Qatif", "Eastern Province", "32651", "0504742521", "Uinted States", new DateTime(10000000000)));
    // the Expanded widget lets the columns share the space

    return ListView.builder(
      itemCount: userAddresses.length,
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
                          title: Text(userAddresses[index].addressName),
                          subtitle: Text(userAddresses[index].country),
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
                  MaterialPageRoute(builder: (context) => AddressViewPage(address: userAddresses[index])),
                )
        );
      },
    );
  }
}