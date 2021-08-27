import 'package:flutter/material.dart';
import 'package:karma/constants.dart';
import 'package:karma/screens/main_screen.dart';
import '../widgets/painter.dart';
import '../models/preferences.dart';
import '../models/login.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var showPassword = false;
  final login = Login();
  @override
  Widget build(BuildContext context) {
    final deviceHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    // final deviceWidth = MediaQuery.of(context).size.width;
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Container(
              height: deviceHeight,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: deviceHeight * 0.20,
                    width: double.infinity,
                    child: CustomPaint(
                      painter: Painter(),
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                            size: 40,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 8,
                              bottom: 2,
                            ),
                            child: Text(
                              'KARMA',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Text(
                            'UNITING POWER',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: deviceHeight * 0.03,
                          ),
                          Text(
                            'LOGIN',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.1,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(
                            deviceSize.width / 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            controller: login.emailController,
                            onFieldSubmitted: (_) {},
                            decoration: InputDecoration(
                              hintText: 'Email',
                              contentPadding: EdgeInsets.only(
                                left: 8,
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: deviceSize.width / 26,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(
                            deviceSize.width / 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  onFieldSubmitted: (_) {},
                                  controller: login.passwordController,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      left: 8,
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: deviceSize.width / 26,
                                    ),
                                  ),
                                  obscureText: !showPassword,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    right: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                  ),
                                  child: showPassword
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  color: orangeTone,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: deviceHeight / 5,
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
                          onPressed: () async {
                            await login.login();
                            Navigator.pushNamed(context, MainScreen.routeName);
                            Preferences().setLoginSettings(true);
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(deviceHeight / 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Not a member yet?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Click here',
                                  style: TextStyle(
                                    color: orangeTone,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
