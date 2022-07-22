import "package:flutter/material.dart";
import 'package:flutter_application_1/socials/catalog.dart';

class socialWidgets extends StatelessWidget {
  final socials social;

  const socialWidgets({super.key, required this.social});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(social.imgurl),
        title: Text(social.name),
        subtitle: Text(social.username),
      ),
    );
  }
}
