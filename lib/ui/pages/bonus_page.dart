import 'package:airplane_app/common/colors.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Text('Bonus Page'),
        ),
      ),
    );
  }
}
