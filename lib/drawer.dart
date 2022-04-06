import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
            icon: Icons.audiotrack,
            text: 'Song',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(0);
              Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.movie,
            text: 'MV',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(1);
              Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.info,
            text: 'Info',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(2);
              Navigator.pop(context);
            },
          ),
          // _drawerItem(
          //   icon: Icons.delete,
          //   text: 'Deleted',
          //   onTap: () => print('Tap To Deleted Menu'),
          // ),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              'Label',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: Icons.favorite,
            text: 'Favorite',
            onTap: () => print('Tap To Favorite'),
          ),
          // ListTile(
          //     title: Text("Settings"),
          //     leading: Icon(Icons.settings),
          // ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/ko.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/images/sa.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('assets/images/wa.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('K-POP'),
    accountEmail: Text('K-POP@kpop.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
