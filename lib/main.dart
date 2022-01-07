import 'package:flutter/material.dart';
import 'package:untitled/style/themedatascrin.dart';

import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeDataScreen().newMethodd(),
        home: // Login_page()
            Login_page());
  }
}
