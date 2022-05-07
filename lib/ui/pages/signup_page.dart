import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:airplane_app/ui/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../routes.dart';

class SIgnUpPage extends StatefulWidget {
  const SIgnUpPage({Key? key}) : super(key: key);

  @override
  State<SIgnUpPage> createState() => _SIgnUpPageState();
}

class _SIgnUpPageState extends State<SIgnUpPage> {
  bool _showPass = true;
  bool _showRePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundApp,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            primary: false,
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              title(),
              inputSection(),
              tacButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: Text(
        'Join us and get\nyour next journey',
        style: TextThemeApp.regularText
            .copyWith(color: ColorsApp.blueDark, fontWeight: semiBold),
      ),
    );
  }

  Widget inputSection() {
    Widget buttonSignUp() {
      return Container(
        width: double.infinity,
        height: 55,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: ColorsApp.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          onPressed: () {
            Navigator.pushNamed(context, Routes.bonusPage);
          },
          child: Text(
            'Get Started',
            style:
                TextThemeApp.regularText.copyWith(color: ColorsApp.whiteColor),
          ),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
          color: ColorsApp.whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Column(
        children: [
          CustomTextFormField(
            title: 'Full Name',
            hintText: 'Input your name',
            onPressed: () {},
          ),
          CustomTextFormField(
              title: 'Email Address',
              hintText: 'your email address',
              keyboardType: TextInputType.emailAddress,
              onPressed: () {}),
          CustomTextFormField(
            title: 'Your Password',
            hintText: 'input your password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: _showPass,
            isPasswordType: true,
            onPressed: () {
              setState(() {
                _showPass = !_showPass;
              });
            },
          ),
          CustomTextFormField(
            title: 'Re-Password',
            hintText: 'confirm your password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: _showRePass,
            isPasswordType: true,
            onPressed: () {
              setState(() {
                _showRePass = !_showRePass;
              });
            },
          ),
          buttonSignUp()
        ],
      ),
    );
  }

  Widget tacButton() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20, bottom: 73),
      child: Text(
        'Term and Conditions',
        style: TextThemeApp.regularText.copyWith(
            color: ColorsApp.greyColor2,
            fontSize: 14,
            fontWeight: light,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
