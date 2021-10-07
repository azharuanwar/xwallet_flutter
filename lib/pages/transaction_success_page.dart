import 'package:flutter/material.dart';
import 'package:xwallet/theme.dart';

class TransactionSuccessPage extends StatelessWidget {
  // const TransactionSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_success.png',
              width: 96,
            ),
            SizedBox(
              height: 116,
            ),
            Text(
              'Transaction Success!',
              style: titleText,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Thank you!, enjoy the bill.',
              style: subtitleText,
            ),
            SizedBox(
              height: 138,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 2 * 30,
              height: 55,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Back to Home',
                  style: titleText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
