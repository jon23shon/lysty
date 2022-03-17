import 'about.dart';
import 'contact.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 63, 66, 112),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 50),
            buildMenuItem(
              text: 'About',
              icon: Icons.auto_stories,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 50),
            buildMenuItem(
              text: 'Contact',
              icon: Icons.add_ic_call,
              onClicked: () => selectedItem(context, 1),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => about(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => contact(),
        ));
        break;
    }
  }
}
