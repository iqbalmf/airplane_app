import 'dart:developer';

import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/icons.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:airplane_app/ui/pages/booking_page.dart';
import 'package:airplane_app/ui/pages/home_page.dart';
import 'package:airplane_app/ui/pages/payment_page.dart';
import 'package:airplane_app/ui/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundApp,
      body: bodyPage(),
      bottomNavigationBar: customBottomNavBar(),
    );
  }

  Widget customBottomNavBar() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
          bottom: 30, left: defaultMargin, right: defaultMargin),
      height: 60,
      decoration: BoxDecoration(
          color: ColorsApp.whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    IconAssets.iconBrowse,
                    color: currentIndex == 0 ? ColorsApp.primaryColor : null,
                    width: 21,
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      color: currentIndex == 0
                          ? ColorsApp.primaryColor
                          : ColorsApp.transparentColor,
                      borderRadius: BorderRadius.circular(18)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    IconAssets.iconBooked,
                    color: currentIndex == 1 ? ColorsApp.primaryColor : null,
                    width: 21,
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      color: currentIndex == 1
                          ? ColorsApp.primaryColor
                          : ColorsApp.transparentColor,
                      borderRadius: BorderRadius.circular(18)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    IconAssets.iconPayment,
                    color: currentIndex == 2 ? ColorsApp.primaryColor : null,
                    width: 21,
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      color: currentIndex == 2
                          ? ColorsApp.primaryColor
                          : ColorsApp.transparentColor,
                      borderRadius: BorderRadius.circular(18)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 3;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    IconAssets.iconSettings,
                    color: currentIndex == 3 ? ColorsApp.primaryColor : null,
                    width: 21,
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                      color: currentIndex == 3
                          ? ColorsApp.primaryColor
                          : ColorsApp.transparentColor,
                      borderRadius: BorderRadius.circular(18)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bodyPage(){
    switch(currentIndex) {
      case 1:
        return BookingPage();
      case 2:
        return PaymentPage();
      case 3:
        return SettingsPage();
      default:
        return HomePage();
    }
  }
}
