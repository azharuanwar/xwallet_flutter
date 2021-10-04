import 'package:flutter/material.dart';
import 'package:xwallet/theme.dart';

class MenuWidget extends StatelessWidget {
  // const MenuWidget({Key? key}) : super(key: key);
  String? name;
  String? imgUrl;

  MenuWidget(this.name, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: backgroundColor1,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 41,
            height: 41,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: greenColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Image.asset(
                imgUrl!,
                // fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            name!,
            style: textGeneral.copyWith(fontSize: 12, color: whiteColor),
          )
        ],
      ),
    );
  }
}
