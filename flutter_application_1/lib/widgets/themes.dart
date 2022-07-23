import 'package:flutter/material.dart';

class myThemes {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.white,
          onPrimary: Colors.black,
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.black,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.black,
          onSurface: Colors.white),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(brightness: Brightness.dark);
  }
}
