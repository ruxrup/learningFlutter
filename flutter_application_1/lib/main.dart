import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'Screens/login.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: MyRoutes.Login,
        routes: {
          MyRoutes.Home: (context) => Home(),
          MyRoutes.Login: (context) => login()
        },
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: myThemes.darkTheme(context),
        theme: myThemes.lightTheme(context));
  }
}
