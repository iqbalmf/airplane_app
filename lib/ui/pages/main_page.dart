import 'dart:developer';

import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/icons.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:airplane_app/ui/pages/booking_page.dart';
import 'package:airplane_app/ui/pages/home_page.dart';
import 'package:airplane_app/ui/pages/payment_page.dart';
import 'package:airplane_app/ui/pages/settings_page.dart';
import 'package:airplane_app/ui/widget/custom_bottomnavigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late STATUS_MENU currentIndex = STATUS_MENU.BROWSE;

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
          bottom: 25, left: defaultMargin, right: defaultMargin),
      height: 60,
      decoration: BoxDecoration(
          color: ColorsApp.whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottomNavigationItem(
            icons: IconAssets.iconBrowse,
            onTap: () {
              _setActiveMenu(STATUS_MENU.BROWSE);
            },
            isSelected: STATUS_MENU.BROWSE == currentIndex,
          ),
          CustomBottomNavigationItem(
              icons: IconAssets.iconBooked,
              onTap: () {
                _setActiveMenu(STATUS_MENU.BOOKED);
              },
              isSelected: STATUS_MENU.BOOKED == currentIndex),
          CustomBottomNavigationItem(
            icons: IconAssets.iconPayment,
            onTap: () {
              _setActiveMenu(STATUS_MENU.PAYMENT);
            },
            isSelected: STATUS_MENU.PAYMENT == currentIndex,
          ),
          CustomBottomNavigationItem(
              icons: IconAssets.iconSettings,
              onTap: () {
                _setActiveMenu(STATUS_MENU.SETTINGS);
              },
              isSelected: STATUS_MENU.SETTINGS == currentIndex),
        ],
      ),
    );
  }

  Widget bodyPage() {
    switch (currentIndex) {
      case STATUS_MENU.BOOKED:
        return BookingPage();
      case STATUS_MENU.PAYMENT:
        return PaymentPage();
      case STATUS_MENU.SETTINGS:
        return SettingsPage();
      default:
        return HomePage();
    }
  }

  void _setActiveMenu(STATUS_MENU menus) {
    setState(() {
      currentIndex = menus;
    });
  }
}

enum STATUS_MENU { BROWSE, BOOKED, PAYMENT, SETTINGS }
