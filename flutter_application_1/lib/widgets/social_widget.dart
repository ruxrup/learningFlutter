import "package:flutter/material.dart";
import 'package:flutter_application_1/socials/catalog.dart';
import 'package:url_launcher/url_launcher.dart';

class socialWidgets extends StatelessWidget {
  final socials social;

  const socialWidgets({super.key, required this.social});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(social.imgurl),
        title: Text(social.name),
        onTap: () => fun(social.url),
      ),
    );
  }
}

void fun(String site) => _launchURL(site);

_launchURL(String website) async {
  await launch(website);
}
