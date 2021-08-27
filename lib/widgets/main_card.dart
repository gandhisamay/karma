import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      height: deviceSize.height * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/buddha.jpg',
          ),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
