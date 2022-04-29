import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/icons.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:airplane_app/routes.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: ColorsApp.backgroundApp,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bonusCard(),
                title(),
                subtitle(),
                buttonStart(),
              ],
            ),
          ),
        )),
      ),
    );
  }

  Widget bonusCard() {
    return Container(
      width: 300,
      height: 211,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(IconAssets.imageCard)),
          boxShadow: [
            BoxShadow(
                color: ColorsApp.primaryColor.withOpacity(0.5),
                blurRadius: 50,
                offset: Offset(0, 10))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextThemeApp.regularText.copyWith(
                        fontSize: 14,
                        color: ColorsApp.whiteColor,
                      ),
                    ),
                    Text(
                      'Iqbal Fauzan',
                      style: TextThemeApp.regularText.copyWith(
                          fontWeight: semiBold, color: ColorsApp.whiteColor),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(IconAssets.iconPlane))),
              ),
              Text('Pay',
                  style: TextThemeApp.regularText
                      .copyWith(color: ColorsApp.whiteColor)),
            ],
          ),
          SizedBox(
            height: 41,
          ),
          Text(
            'Balance',
            style: TextThemeApp.regularText.copyWith(
                fontSize: 14, fontWeight: light, color: ColorsApp.whiteColor),
          ),
          Text(
            'IDR 280.000.000',
            style: TextThemeApp.regularText.copyWith(
                fontSize: 26, fontWeight: light, color: ColorsApp.whiteColor),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Text(
        'Big Bonus 🎉',
        style: TextThemeApp.regularText
            .copyWith(fontSize: 32, fontWeight: semiBold),
      ),
    );
  }

  Widget subtitle() {
    return Container(
      child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: TextThemeApp.subtitleText
              .copyWith(fontWeight: light, fontSize: 16),
          textAlign: TextAlign.center),
    );
  }

  Widget buttonStart() {
    return Container(
      width: 220,
      height: 55,
      margin: EdgeInsets.only(top: 50),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: ColorsApp.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, Routes.main, (Route<dynamic> route) => false);
        },
        child: Text(
          'Start Fly Now',
          style: TextThemeApp.regularText.copyWith(color: ColorsApp.whiteColor),
        ),
      ),
    );
  }
}
