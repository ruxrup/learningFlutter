import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screens/Home.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.only(
                  top: 0.0,
                  bottom: 0.0,
                ),
                accountName: Text(
                  "Daksh Srivastava",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "@ruxrup",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/91255109?v=4"),
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(CupertinoIcons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled),
                  title: Text("Profiles"),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.mail),
                  title: Text("Email Me"),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.clear),
                  title: Text("Exit"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
