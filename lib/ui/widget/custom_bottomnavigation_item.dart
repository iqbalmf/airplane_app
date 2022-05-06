import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/ui/pages/main_page.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationItem extends StatefulWidget {
  const CustomBottomNavigationItem(
      {Key? key,
      required this.icons,
      required this.onTap,
      this.isSelected = false})
      : super(key: key);
  final String icons;
  final Function() onTap;
  final bool isSelected;

  @override
  State<CustomBottomNavigationItem> createState() {
    return _CustomBottomNavigationItemState();
  }
}

class _CustomBottomNavigationItemState
    extends State<CustomBottomNavigationItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        color: ColorsApp.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Container(
              width: 24,
              height: 24,
              child: Image.asset(
                widget.icons,
                color: widget.isSelected ? ColorsApp.primaryColor : null,
                width: 21,
              ),
            ),
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                  color: widget.isSelected
                      ? ColorsApp.primaryColor
                      : ColorsApp.transparentColor,
                  borderRadius: BorderRadius.circular(18)),
            )
          ],
        ),
      ),
    );
  }
}
