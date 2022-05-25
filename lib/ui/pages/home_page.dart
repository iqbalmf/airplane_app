import 'package:airplane_app/common/colors.dart';
import 'package:airplane_app/common/icons.dart';
import 'package:airplane_app/common/textstyle.dart';
import 'package:airplane_app/ui/widget/card/destination_card.dart';
import 'package:airplane_app/ui/widget/card/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        headerSection(),
        popularSection(),
        newThisYearSection(),
      ],
    );
  }

  Widget headerSection() {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,\nIqbal Fauzan',
                  style: TextThemeApp.headline
                      .copyWith(color: ColorsApp.blueDark, fontWeight: medium),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style: TextThemeApp.regularText
                      .copyWith(color: ColorsApp.greyColor2, fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(IconAssets.imageProfile),
                )),
          )
        ],
      ),
    );
  }

  Widget popularSection() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
                city: 'Tangerang',
                imageUrl: IconAssets.imageDestination1,
                name: 'Lake Ciliwung',
                rating: 4.8),
            DestinationCard(
                city: 'Spain',
                imageUrl: IconAssets.imageDestination2,
                name: 'White Houses',
                rating: 4.7),
            DestinationCard(
                city: 'Monaco',
                imageUrl: IconAssets.imageDestination3,
                name: 'Hill Heyo',
                rating: 4.8),
            DestinationCard(
                city: 'Japan',
                imageUrl: IconAssets.imageDestination4,
                name: 'Menarra',
                rating: 5),
            DestinationCard(
                city: 'Singapore',
                imageUrl: IconAssets.imageDestination5,
                name: 'Payung Teduh',
                rating: 4.8),
          ],
        ),
      ),
    );
  }

  Widget newThisYearSection() {
    return Container(
      margin:
          EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin, bottom: 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New This Year",
            style: TextThemeApp.headline
                .copyWith(color: ColorsApp.blueDark, fontWeight: medium),
          ),
          DestinationTile(
            city: 'Singaraja',
            imageUrl: IconAssets.imageDestination6,
            name: 'Danau Beratan',
            rating: 4.5,
          ),
          DestinationTile(
            city: 'Sydney Opera',
            imageUrl: IconAssets.imageDestination7,
            name: 'Australia',
            rating: 4.7,
          ),
          DestinationTile(
            city: 'Italy',
            imageUrl: IconAssets.imageDestination8,
            name: 'Roma',
            rating: 4.8,
          ),
          DestinationTile(
            city: 'Singapore',
            imageUrl: IconAssets.imageDestination5,
            name: 'Payung Teduh',
            rating: 4.5,
          ),
          DestinationTile(
            city: 'Monaco',
            imageUrl: IconAssets.imageDestination3,
            name: 'Hill Hey',
            rating: 4.7,
          )
        ],
      ),
    );
  }
}
