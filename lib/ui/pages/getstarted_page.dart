import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/icons.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:airplane_app/routes.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(IconAssets.imageGetStarted),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: TextThemeApp.headline
                      .copyWith(color: ColorsApp.whiteColor, fontSize: 32),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: TextThemeApp.regularText
                      .copyWith(color: ColorsApp.whiteColor),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 220,
                  height: 55,
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: ColorsApp.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)
                      )
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.signupPage);
                    },
                    child: Text(
                      'Get Started',
                      style: TextThemeApp.regularText
                          .copyWith(color: ColorsApp.whiteColor),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
