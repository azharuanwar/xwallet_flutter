import 'package:flutter/material.dart';
import 'package:xwallet/pages/home_page.dart';

import '../theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    Widget payButtom() {
      return Container(
        width: 66,
        height: 66,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: primaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(17),
          child: Image.asset(
            'assets/icon_pay.png',
            width: 32,
          ),
        ),
      );
    }

    Widget customNavBar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor1,
            currentIndex: currentIdx,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset(
                    'assets/icon_nav_home.png',
                    width: 24,
                    color: currentIdx == 0 ? whiteColor : Color(0xffA3A4A8),
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset(
                    'assets/icon_nav_invest.png',
                    width: 24,
                    color: currentIdx == 0 ? whiteColor : Color(0xffA3A4A8),
                  ),
                ),
                label: 'Invest',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset(
                    'assets/icon_nav_notif.png',
                    width: 24,
                    color: currentIdx == 0 ? whiteColor : Color(0xffA3A4A8),
                  ),
                ),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset(
                    'assets/icon_nav_profile.png',
                    width: 24,
                    color: currentIdx == 0 ? whiteColor : Color(0xffA3A4A8),
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIdx) {
        case 0:
          return HomePage();
          // ignore: dead_code
          break;

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      body: body(),
      bottomNavigationBar: customNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: payButtom(),
    );
  }
}
