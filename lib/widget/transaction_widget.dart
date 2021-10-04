import 'package:flutter/material.dart';

import '../theme.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: textGeneral.copyWith(fontSize: 10, color: greyColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
