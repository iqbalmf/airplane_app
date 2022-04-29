import 'package:airplane_app/routes.dart';
import 'package:airplane_app/ui/pages/bonus_page.dart';
import 'package:airplane_app/ui/pages/getstarted_page.dart';
import 'package:airplane_app/ui/pages/main_page.dart';
import 'package:airplane_app/ui/pages/signup_page.dart';
import 'package:airplane_app/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.initial: (context) => SplashPage(),
        Routes.getStarted: (context) => GetStartedPage(),
        Routes.signupPage: (context) => SIgnUpPage(),
        Routes.bonusPage: (context) => BonusPage(),
        Routes.main: (context) => MainPage(),
      },
    );
  }
}
