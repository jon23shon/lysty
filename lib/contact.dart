import 'package:flutter/material.dart';

import 'navigation.dart';

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: Navigation(),
        appBar: AppBar(
          title: Text("Contact"),
        ),
        // ignore: unnecessary_new
        body: new Center(
          child: RichText(
              text: TextSpan(
                  text: "we are lysty",
                  style: TextStyle(
                    height: 2,
                    fontSize: 24,
                    color: Colors.blueGrey,
                  ),
                  children: <TextSpan>[
                TextSpan(text: '\n', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: 'Phone Number: pending',
                    style: TextStyle(color: Colors.black)),
                TextSpan(text: '\n', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: 'Email: pending',
                    style: TextStyle(color: Colors.black)),
              ])),
        ),
      );
}
