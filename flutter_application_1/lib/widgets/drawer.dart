import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Screens/Home.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  "created by:",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "@ruxrup",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://c.tenor.com/HEXI2HyZWWcAAAAM/tom-and-jerry-akatsuki.gif"),
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled),
                  title: Text("My GitHub Profile"),
                  onTap: () => _launchURL("https://github.com/ruxrup"),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.mail),
                  title: Text("Email Me"),
                  onTap: () => _launchURL(
                      "https://mail.google.com/mail/u/?authuser=dakshsrivastava2@gmail.com"),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.clear),
                  title: Text("Exit"),
                  onTap: () => exit(0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void fun(String site) => _launchURL(site);

Future _launchURL(String website) async {
  await launch(website);
}
