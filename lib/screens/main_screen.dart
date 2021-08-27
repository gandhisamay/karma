import 'package:flutter/material.dart';
import 'package:karma/constants.dart';
import 'package:karma/screens/profile_screen.dart';
import 'package:karma/widgets/main_card.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/main';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: orangeTone,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top * 1.25,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Karma Drives',
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).textTheme.bodyText1!.color),
                ),
              ),
              Spacer(),
              Chip(
                label: Text(
                  'MY DRIVES',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ProfileScreen.routeName,
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    size: deviceSize.width / 8,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(
              deviceSize.width / 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextFormField(
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.black,
              ),
              onFieldSubmitted: (_) {},
              decoration: InputDecoration(
                hintText: 'Search here...',
                contentPadding: EdgeInsets.only(
                  left: 20,
                  top: 10,
                ),
                suffixIcon: Container(
                  margin: EdgeInsets.only(
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: deviceSize.width / 23,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: ListView(
                children: [
                  MainCard(),
                  MainCard(),
                  MainCard(),
                  MainCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
