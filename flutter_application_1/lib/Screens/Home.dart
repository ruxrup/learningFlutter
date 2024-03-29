import 'dart:ui';
import 'package:flutter/services.dart';
import "package:flutter/material.dart";
import 'dart:convert';
import 'package:flutter_application_1/socials/catalog.dart';
import 'package:flutter_application_1/widgets/social_widget.dart';

import '../widgets/drawer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSites();
  }

  loadSites() async {
    var importedJson = await rootBundle.loadString("assets/docs/sites.json");
    var decodedJson = jsonDecode(importedJson);
    var listJson = decodedJson["sites"];
    socials_list = List.from(listJson)
        .map<socials>((social) => socials.fromMap(social))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Websites"),
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: (socials_list.isNotEmpty && socials_list != null)
          ? ListView.builder(
              itemCount: socials_list.length,
              itemBuilder: ((context, index) {
                return socialWidgets(social: socials_list[index]);
              }))
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: myDrawer(),
    );
  }
}
