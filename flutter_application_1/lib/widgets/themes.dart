import 'package:flutter/material.dart';

class myThemes {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
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
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(brightness: Brightness.dark);
  }
}
