import 'package:flutter/material.dart';

class DoubleColumnListViewWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // the Expanded widget lets the columns share the space
    Widget column = Expanded(
      child: Column(
        // align the text to the left instead of centered
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Title', style: TextStyle(fontSize: 16),),
          Text('subtitle'),
        ],
      ),
    );

    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                column,
                column,
              ],
            ),
          ),
        );
      },
    );
  }
}