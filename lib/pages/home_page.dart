import 'package:flutter/material.dart';
import 'package:xwallet/theme.dart';
import 'package:xwallet/widget/menu_widget.dart';
import 'package:xwallet/widget/transaction_widget.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Azharu',
                  style: titleText,
                ),
                Text(
                  'Welcome!',
                  style: subtitleText,
                )
              ],
            ),
            Image.asset(
              'assets/icon_photo.png',
              width: 61,
            )
          ],
        ),
      );
    }

    Widget cardBalance() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        padding: EdgeInsets.only(top: 13),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: [
            Text(
              'Balance',
              style: textGeneral.copyWith(fontSize: 12, color: whiteColor),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Rp. 4.500.000',
              style: titleText,
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width - (2 * 30),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/icon_transfer.png',
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff204C5B),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Transfer',
                          style: textGeneral.copyWith(
                              fontSize: 12, color: whiteColor),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/icon_transfer.png',
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff204C5B),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Top Up',
                          style: textGeneral.copyWith(
                              fontSize: 12, color: whiteColor),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/icon_transfer.png',
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff204C5B),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Scan',
                          style: textGeneral.copyWith(
                              fontSize: 12, color: whiteColor),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget payBill() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pay Bill',
              style: titleText,
            ),
            SizedBox(
              height: 6,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuWidget('Phone', 'assets/icon_phone.png'),
                    MenuWidget('Phone', 'assets/icon_phone.png'),
                    MenuWidget('Phone', 'assets/icon_phone.png'),
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuWidget('Phone', 'assets/icon_phone.png'),
                    MenuWidget('Phone', 'assets/icon_phone.png'),
                    MenuWidget('Phone', 'assets/icon_phone.png'),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget lastTransaction() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.only(top: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last Transaction',
              style: titleText,
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              width: MediaQuery.of(context).size.width - (2 * 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: backgroundColor1,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    TransactionWidget('Steam Game', 95000, true),
                    TransactionWidget('Paypal', 95000, false),
                    TransactionWidget('Steam Game', 95000, false),
                    TransactionWidget('Steam Game', 95000, false),
                    TransactionWidget('Steam Game', 95000, false),
                    TransactionWidget('Steam Game', 95000, true),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget customNavBar() {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 33),
            width: MediaQuery.of(context).size.width,
            height: 85,
            // color: whiteColor,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: whiteColor,
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 36, bottom: 25),
                  // height: ,
                  child: Column(
                    children: [
                      Image.asset('assets/icon_nav_home.png'),
                      Text('Home')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 66,
              height: 66,
              // color: primaryColor,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(19),
              ),
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: Image.asset(
                  'assets/icon_pay.png',
                  width: 32,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          header(),
          cardBalance(),
          payBill(),
          lastTransaction(),
          customNavBar(),
        ],
      ),
    );
  }
}
