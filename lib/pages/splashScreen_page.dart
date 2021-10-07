import 'package:flutter/material.dart';
import 'package:xwallet/pages/login_page.dart';
import 'package:xwallet/pages/main_page.dart';
import 'package:xwallet/theme.dart';

class SplashScreenPage extends StatefulWidget {
  // const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Image.asset(
          'assets/icon_app.png',
          width: 97,
        ),
      ),
    );
  }
}
