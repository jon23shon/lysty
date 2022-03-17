import 'package:flutter/material.dart';

import 'navigation.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: Navigation(),

        appBar: AppBar(
          title: Text("About"),
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
                    text: 'LYSTY APP', style: TextStyle(color: Colors.black)),
                TextSpan(text: '\n', style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: 'WILL UPDATE SOON',
                    style: TextStyle(color: Colors.black)),
                TextSpan(text: '\n', style: TextStyle(color: Colors.black)),
                TextSpan(text: ';)', style: TextStyle(color: Colors.black)),
              ])),
        ),
      );
}
