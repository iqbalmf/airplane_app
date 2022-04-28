import 'dart:async';

import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/icons.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:airplane_app/routes.dart';
import 'package:airplane_app/ui/pages/getstarted_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(
          context, Routes.getStarted);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(IconAssets.iconPlane))),
            ),
            Text(
              'AIRPLANE',
              style: TextThemeApp.regularText.copyWith(
                  fontSize: 32, color: ColorsApp.whiteColor, letterSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}
