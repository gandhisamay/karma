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
  bool isLoggedIn = false;
  @override
  void didChangeDependencies() {
    Future<void> myPrefernces() async {
      isLoggedIn = await Preferences().getLoginSettings();
      print(isLoggedIn);
      setState(() {});
    }

    myPrefernces();
    super.didChangeDependencies();
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
      home: isLoggedIn ? MainScreen() : LoginScreen(),
      routes: {
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        MainScreen.routeName: (ctx) => MainScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
