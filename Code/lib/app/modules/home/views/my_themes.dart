import 'package:flutter/material.dart';

class MyThemes{
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.blue[100],
    colorScheme: ColorScheme.light(),
    inputDecorationTheme: InputDecorationTheme(suffixIconColor: Colors.blue)
  );
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
    colorScheme: ColorScheme.dark(),
    inputDecorationTheme: InputDecorationTheme(suffixIconColor: Colors.black, focusColor: Colors.grey[300])
  );
}
