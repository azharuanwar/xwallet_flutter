import 'package:charts_flutter/flutter.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
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
                      Text(
                        'BTC',
                        style: textGeneral.copyWith(
                            fontSize: 12,
                            color: whiteColor,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Text(
                  '+4,59%',
                  style: nominalText,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: blueOcean,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Buy',
                      style: titleText.copyWith(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From :',
                      style:
                          textGeneral.copyWith(fontSize: 12, color: greyColor),
                    ),
                    Text(
                      '\$32,903',
                      style: titleText.copyWith(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
