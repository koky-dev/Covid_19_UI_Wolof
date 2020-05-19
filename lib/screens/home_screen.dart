import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/detail_screen.dart';
import 'package:covid_19/widgets/help_card.dart';
import 'package:covid_19/widgets/prenvention_card.dart';
import 'package:covid_19/widgets/appbar.dart';
import 'package:covid_19/widgets/infos_cards.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 40, left: 20, right: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.03),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: <Widget>[
                InfoCard(
                  title: "Gni Corona",
                  iconColor: Color(0xFFFF8C00),
                  effectedNum: 2544,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen()));
                  },
                ),
                InfoCard(
                  title: "Gni Faatu",
                  iconColor: Color(0xFFFF2D55),
                  effectedNum: 26,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen()));
                  },
                ),
                InfoCard(
                  title: "Gni Wérr",
                  iconColor: Color(0xFF50E3C2),
                  effectedNum: 1076,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen()));
                  },
                ),
                InfoCard(
                  title: "Corona bess",
                  iconColor: Color(0xFF5856D6),
                  effectedNum: 64,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen()));
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Fagaru thi Corona",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PreventionCard(
                        svgSrc: "assets/icons/hand_wash.svg",
                        title: "Rakhass say lokho"),
                    PreventionCard(
                        svgSrc: "assets/icons/use_mask.svg",
                        title: "Sol masque"),
                    PreventionCard(
                        svgSrc: "assets/icons/Clean_Disinfect.svg",
                        title: "Laal sel")
                  ],
                ),
                SizedBox(height: 40),
                HelpCard()
              ],
            ),
          )
        ],
      ),
    );
  }
}
