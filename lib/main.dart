import 'package:flutter/material.dart';
import 'package:test_app/adminHome.dart';
//import 'package:splashscreen/splashscreen.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
