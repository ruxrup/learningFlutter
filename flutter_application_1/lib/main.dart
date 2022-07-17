import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home.dart';
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
      initialRoute: "/login",
      routes: {"/": (context) => Home(), "/login": (context) => login()},
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.blue,
              onPrimary: Colors.white,
              secondary: Colors.cyan,
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
