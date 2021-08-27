import 'package:flutter/material.dart';
import 'package:karma/constants.dart';
import 'package:karma/screens/login_screen.dart';
import 'package:karma/screens/main_screen.dart';
import 'package:karma/widgets/profile_card.dart';
import '../models/preferences.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _switchState = false;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final topHeight = MediaQuery.of(context).padding.top;
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: orangeTone,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: topHeight * 1.25,
            left: deviceSize.width / 40,
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.3),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MainScreen.routeName);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: topHeight * 1.20,
            left: deviceSize.width / 7,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Profile',
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyText1!.color),
              ),
            ),
          ),
          Positioned(
            top: topHeight * 1.25,
            right: deviceSize.width / 40,
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.3),
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: deviceSize.height * 0.7,
              width: deviceSize.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: deviceSize.width / 4,
                  ),
                  // ProfileDetails(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ProfileCard(message: 'Name', data: 'Paul'),
                      ProfileCard(
                          message: 'Phone Number', data: '+91 9876543210'),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ProfileCard(message: 'Location', data: 'Mumbai'),
                      ProfileCard(message: 'Interest', data: 'FootBall'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: deviceSize.width / 13,
                        ),
                        child: Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Spacer(),
                      Switch(
                        value: _switchState,
                        onChanged: (_) {
                          setState(() {
                            _switchState = _;
                          });
                        },
                        activeColor: orangeTone,
                      ),
                      SizedBox(
                        width: deviceSize.width / 13,
                      )
                    ],
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.1,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: greenTone,
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceSize.width / 8,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      Preferences().setLoginSettings(false);
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: deviceSize.height * 0.625,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(deviceSize.width / 2),
              child: Container(
                width: deviceSize.width / 3.5,
                height: deviceSize.width / 3.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'images/profile_pic.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
