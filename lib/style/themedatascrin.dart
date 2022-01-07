import 'package:flutter/material.dart';

class ThemeDataScreen {
  ThemeData newMethodd() {
    return ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
        fontFamily: 'Georgia',
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.light,
          backgroundColor: Colors.indigo,
          primaryColorDark: Colors.orange,
        ).copyWith(secondary: Colors.blue[200]));
  }
}
