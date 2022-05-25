import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/icons.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:flutter/material.dart';

/**
 * Created by IqbalMF on 2022.
 * Package ui.widget.card
 */

class DestinationTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final double rating;

  const DestinationTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.city,
    this.rating = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorsApp.whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageUrl))),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextThemeApp.regularText.copyWith(
                      fontWeight: semiBold, color: ColorsApp.blueDark),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  city,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextThemeApp.regularText.copyWith(
                      fontSize: 14,
                      color: ColorsApp.greyColor2,
                      fontWeight: light),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                margin: const EdgeInsets.only(right: 2),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(IconAssets.iconStar))),
              ),
              Text(
                rating.toString(),
                style: TextThemeApp.regularText
                    .copyWith(fontWeight: medium, fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
