import 'package:flutter/material.dart';
import 'package:karma/screens/login_screen.dart';
import 'package:karma/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karma',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
          // bodyText2: TextStyle(
          //   color: Colors.white,
          // ),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
