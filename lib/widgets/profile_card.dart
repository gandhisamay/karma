import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  late final String message;
  late final String data;

  ProfileCard({required this.message, required this.data});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width / 2.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              message,
            ),
          ),
          Container(
            color: Colors.grey.withOpacity(0.2),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(data),
          )
        ],
      ),
    );
  }
}
