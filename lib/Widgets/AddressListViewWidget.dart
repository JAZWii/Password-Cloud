import 'package:flutter/material.dart';
import 'package:password_cloud/Data/Pojo/ClassData/Address.dart';
import 'package:password_cloud/Pages/AddressViewPage.dart';

class AddressListViewWidget extends StatelessWidget {
  /*final*/List<Address> userAddresses = new List();


  //DoubleColumnListViewWidget({Key key, @required this.userLogins}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    userAddresses.add(new Address(id: 1, addressName:"US Aramex", fullName:"Jawad Almarhoon", address1:"Al Anwar", address2:"2332", city:"Qatif", state:"Eastern Province", zip:"32651", phone:"0504742521", country:"Uinted States", createDate:new DateTime(10000000000)));
    userAddresses.add(new Address(id: 2, addressName:"US DHL",    fullName:"Jawad Almarhoon", address1:"Al Anwar", address2:"2332", city:"Qatif", state:"Eastern Province", zip:"32651", phone:"0504742521", country:"Uinted States", createDate:new DateTime(10000000000)));
    userAddresses.add(new Address(id: 3, addressName:"US UPS",    fullName:"Jawad Almarhoon", address1:"Al Anwar", address2:"2332", city:"Qatif", state:"Eastern Province", zip:"32651", phone:"0504742521", country:"Uinted States", createDate:new DateTime(10000000000)));
    userAddresses.add(new Address(id: 4, addressName:"US Wasil",  fullName:"Jawad Almarhoon", address1:"Al Anwar", address2:"2332", city:"Qatif", state:"Eastern Province", zip:"32651", phone:"0504742521", country:"Uinted States", createDate:new DateTime(10000000000)));
    userAddresses.add(new Address(id: 5, addressName:"US FedEx",  fullName:"Jawad Almarhoon", address1:"Al Anwar", address2:"2332", city:"Qatif", state:"Eastern Province", zip:"32651", phone:"0504742521", country:"Uinted States", createDate:new DateTime(10000000000)));
    userAddresses.add(new Address(id: 6, addressName:"US China",  fullName:"Jawad Almarhoon", address1:"Al Anwar", address2:"2332", city:"Qatif", state:"Eastern Province", zip:"32651", phone:"0504742521", country:"Uinted States", createDate:new DateTime(10000000000)));
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
                          leading: Icon(Icons.home),
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