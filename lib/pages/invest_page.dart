import 'package:flutter/material.dart';
import 'package:xwallet/theme.dart';
import 'package:xwallet/widget/stock_invest_widget.dart';

class InvestPage extends StatelessWidget {
  // const InvestPage({ Key? key }) : super(key: key);

  Widget stock() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25, top: 32),
          child: Text(
            'Stock',
            style: textGeneral.copyWith(
                fontSize: 14, color: whiteColor, fontWeight: FontWeight.w800),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              StockMaterial(),
              StockMaterial(),
              StockMaterial(),
            ],
          ),
        ),
      ],
    );
  }

  Widget sucrofest() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25, top: 32),
          child: Text(
            'Stock',
            style: textGeneral.copyWith(
                fontSize: 14, color: whiteColor, fontWeight: FontWeight.w800),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              StockMaterial(),
              StockMaterial(),
              StockMaterial(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor2,
        appBar: AppBar(
          title: Text('Invest'),
          titleTextStyle: titleText,
          backgroundColor: backgroundColor2,
          // automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [stock(), sucrofest(), sucrofest(), sucrofest()],
        ));
  }
}
