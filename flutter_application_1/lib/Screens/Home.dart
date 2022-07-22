import 'dart:ui';

import "package:flutter/material.dart";
import 'package:flutter_application_1/socials/catalog.dart';
import 'package:flutter_application_1/widgets/social_widget.dart';

import '../widgets/drawer.dart';

class Home extends StatelessWidget {
  final String t = "hello world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t),
      ),
      body: ListView.builder(
          itemCount: socials_list.length,
          itemBuilder: ((context, index) {
            return socialWidgets(social: socials_list[index]);
          })),
      drawer: myDrawer(),
    );
  }
}
