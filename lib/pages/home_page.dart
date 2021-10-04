import 'package:flutter/material.dart';
import 'package:xwallet/theme.dart';
import 'package:xwallet/widget/menu_widget.dart';

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
            Container(
              width: MediaQuery.of(context).size.width - (2 * 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: backgroundColor1,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: greenLightColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Steam Game',
                              style: textGeneral.copyWith(
                                color: whiteColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '-Rp. 95.000',
                              style: textGeneral.copyWith(
                                  fontSize: 10, color: greyColor),
                            )
                          ],
                        )
                      ],
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
      backgroundColor: backgroundColor2,
      body: ListView(
        children: [
          header(),
          cardBalance(),
          payBill(),
          lastTransaction(),
        ],
      ),
    );
  }
}
