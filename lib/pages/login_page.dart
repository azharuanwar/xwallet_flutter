import 'package:flutter/material.dart';
import 'package:xwallet/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
