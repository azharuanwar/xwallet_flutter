import 'package:flutter/material.dart';
import 'package:xwallet/theme.dart';

class StockMaterial extends StatelessWidget {
  // const StockMaterial({ Key? key }) : super(key: key);

  // String? name;
  // int? percetage;
  // String? buySell;
  // int? valueFrom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 151,
      height: 108,
      // color: backgroundColor1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor1,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: greenLightColor),
                ),
                SizedBox(
                  width: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BTC',
                      style:
                          textGeneral.copyWith(fontSize: 12, color: whiteColor),
                    ),
                    Text(
                      '+4,25%',
                      style: nominalText,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
