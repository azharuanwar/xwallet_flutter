import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:xwallet/pages/home_page.dart';
import 'package:xwallet/pages/main_page.dart';
import 'package:xwallet/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // RiveAnimationController? _animationController;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back!',
                style: titleText,
              ),
              Text(
                'Login to continue your journey',
                style: subtitleText.copyWith(color: greyColor),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 64),
                child: Image.asset(
                  'assets/image_login.png',
                  width: 235,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: textGeneral.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: whiteColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 315,
                    height: 45,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        hintStyle: textGeneral.copyWith(
                            fontSize: 12, color: darkColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: darkColor),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: textGeneral.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: whiteColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 315,
                    height: 45,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        hintStyle: textGeneral.copyWith(
                            fontSize: 12, color: darkColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: darkColor),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: defaultMargin),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: textGeneral.copyWith(
                      fontSize: 14, color: Color(0xff2466FF)),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                    },
                    child: Container(
                      // margin: EdgeInsets.only(top: 14),
                      width: 315,
                      height: 55,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Login',
                          style: textGeneral.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: whiteColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have account? ',
                        style: textGeneral.copyWith(
                            color: whiteColor, fontSize: 12),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Sign Up',
                          style: textGeneral.copyWith(
                              color: primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
