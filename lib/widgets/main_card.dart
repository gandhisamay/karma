import 'package:flutter/material.dart';
import 'package:karma/constants.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      height: deviceSize.height * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
          ),
        ],
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/buddha.jpg',
          ),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      '9523',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'JOINED',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Text(
              'CATEGORY',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontStyle: FontStyle.italic,
                fontSize: 16,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Text(
              'SPIRITUAL EMPOWERMENT',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontWeight: FontWeight.bold,
                fontSize: deviceSize.width / 20,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.access_alarm_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  '05:00 AM | 07 DEC 2019',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontStyle: FontStyle.italic,
                    fontSize: deviceSize.width / 20,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(
                labelPadding: EdgeInsets.symmetric(
                  horizontal: deviceSize.width / 15,
                ),
                backgroundColor: greenTone,
                label: Text(
                  'JOINED',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Chip(
                labelPadding: EdgeInsets.symmetric(
                  horizontal: deviceSize.width / 15,
                ),
                label: Text(
                  'DO KARMA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
