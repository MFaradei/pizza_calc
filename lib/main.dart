import 'package:flutter/material.dart';
//import 'package:untitled/registerpage.dart';

import 'boot_first/firstboot.dart';
import 'choice_pizza.dart';
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
        home: Scaffold(
            body: // Login_page()
                Fist_boot()));
  }
}
