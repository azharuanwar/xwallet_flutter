import 'package:flutter/material.dart';

import '../theme.dart';

class TransactionWidget extends StatelessWidget {
  // const TransactionWidget({Key? key}) : super(key: key);
  String? name;
  int? total;
  bool? typeCircle = false;

  TransactionWidget(this.name, this.total, this.typeCircle);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: typeCircle! ? greenLightColor : redCircleColor,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 9,
              ),
              Container(
                width: MediaQuery.of(context).size.width - (2 * 62),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name!,
                      style: textGeneral.copyWith(
                        color: whiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // SizedBox(
                    //   width: 122,
                    // ),
                    Text(
                      'Rp. ' + total.toString(),
                      style:
                          textGeneral.copyWith(fontSize: 10, color: greyColor),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
