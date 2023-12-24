import 'package:flutter/material.dart';

class Themes {
  final lightTheme=
  ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey[300],
  appBarTheme: AppBarTheme(color: Colors.black)
  );
    final darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blueGrey[800],
      appBarTheme: AppBarTheme(color: Colors.white
      )
  );
}