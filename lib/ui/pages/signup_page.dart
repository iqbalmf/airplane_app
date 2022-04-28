import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/textstyle.dart';
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
    return Container(
      color: ColorsApp.primaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorsApp.backgroundApp,
          body: SingleChildScrollView(
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
    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Full Name'),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: ColorsApp.blackColor,
              decoration: InputDecoration(
                hintText: 'Input your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: ColorsApp.primaryColor)),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email Address'),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: ColorsApp.blackColor,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Your email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: ColorsApp.primaryColor)),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password'),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: ColorsApp.blackColor,
              obscureText: _showPass,
              decoration: InputDecoration(
                  hintText: 'Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: ColorsApp.primaryColor)),
                  suffixIcon: IconButton(
                    color: ColorsApp.primaryColor,
                    icon: Icon(
                      _showPass ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _showPass = !_showPass;
                      });
                    },
                  )),
            )
          ],
        ),
      );
    }

    Widget passwordReInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Re-Password'),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: ColorsApp.blackColor,
              obscureText: _showRePass,
              decoration: InputDecoration(
                  hintText: 'Confirm Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: ColorsApp.primaryColor)),
                  suffixIcon: IconButton(
                    color: ColorsApp.primaryColor,
                    icon: Icon(
                      _showRePass ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _showRePass = !_showRePass;
                      });
                    },
                  )),
            )
          ],
        ),
      );
    }

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
          nameInput(),
          emailInput(),
          passwordInput(),
          passwordReInput(),
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
