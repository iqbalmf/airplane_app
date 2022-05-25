import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/icons.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String imageUrl;
  final String city;
  final String name;
  final double rating;

  DestinationCard(
      {Key? key,
      required this.imageUrl,
      required this.city,
      required this.name,
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Container(
            width: 200,
            height: 324,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: ColorsApp.whiteColor),
            margin: EdgeInsets.only(left: defaultMargin),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 180,
                  height: 220,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image:
                          DecorationImage(image: AssetImage(imageUrl))),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 55,
                      decoration: const BoxDecoration(
                          color: ColorsApp.whiteColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(18))),
                      child: Row(
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
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextThemeApp.regularText.copyWith(
                                fontWeight: semiBold,
                                color: ColorsApp.blueDark),
                          ),
                          const SizedBox(
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
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
