import 'dart:ui';

import "package:flutter/material.dart";

class Home extends StatelessWidget {
  final String t = "hello world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t),
      ),
      body: Center(
        child: Text(t),
      ),
      drawer: Drawer(),
    );
  }
}