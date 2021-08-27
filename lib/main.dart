import 'package:flutter/material.dart';
import 'package:karma/screens/login_screen.dart';
import 'package:karma/screens/main_screen.dart';
import 'package:karma/screens/profile_screen.dart';
import '../models/preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your applicatio
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = true;
  @override
  void initState() {
    Future<void> myPrefernces() async {
      isLoggedIn = await Preferences().getLoginSettings();
    }
    setState(() {
    });

    myPrefernces();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karma',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'OpenSans',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
          // bodyText2: TextStyle(
          //   color: Colors.white,
          // ),
        ),
      ),
      home: MainScreen(),
    );
  }
}
