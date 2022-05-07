import 'package:airplane_app/common/colors.dart';
import 'package:flutter/material.dart';

import '../../common/textstyle.dart';

/**
 * Created by IqbalMF on 2022.
 * Package ui.widget
 */

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function() onPressed;
  final bool isPasswordType;

  const CustomTextFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.isPasswordType = false,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: ColorsApp.blackColor,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: ColorsApp.primaryColor)),
              suffixIcon: isPasswordType ? IconButton(
                color:
                    obscureText ? ColorsApp.primaryColor : ColorsApp.greyColor2,
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: onPressed,
              ) : null,
            ),
          )
        ],
      ),
    );
  }
}
