import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/login.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.Login,
      routes: {
        MyRoutes.Home: (context) => Home(),
        MyRoutes.Login: (context) => login()
      },
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.indigoAccent,
              onPrimary: Colors.white,
              secondary: Colors.indigoAccent,
              onSecondary: Colors.white,
              error: Colors.black,
              onError: Colors.white,
              background: Colors.grey,
              onBackground: Colors.black,
              surface: Colors.white,
              onSurface: Colors.black),
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
    );
  }
}
