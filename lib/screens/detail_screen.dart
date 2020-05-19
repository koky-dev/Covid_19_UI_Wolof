import 'package:covid_19/constants.dart';
import 'package:covid_19/widgets/detail_appbar.dart';
import 'package:covid_19/widgets/weekly_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailsAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildTitleWithMoreIcon(),
                  SizedBox(height: 15),
                  buildCaseNumber(context),
                  SizedBox(height: 15),
                  Text(
                    "Ministère de la Santé",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: kTextMediumColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 15),
                  WeeklyChart(),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildInfoTextWithPercentage(
                        percentage: "6.43",
                        title: "Ayou Bess bi nu Guenn",
                      ),
                      buildInfoTextWithPercentage(
                        percentage: "9.43",
                        title: "Pourcentage de Guéris",
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 54,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Corona thi Adouna Bi",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SvgPicture.asset("assets/icons/more.svg")
                    ],
                  ),
                  SizedBox(height: 10),
                  SvgPicture.asset("assets/icons/map.svg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  RichText buildInfoTextWithPercentage({String title, String percentage}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$percentage% \n",
            style: TextStyle(
              fontSize: 20,
              color: kPrimaryColor,
            ),
          ),
          TextSpan(
            text: title,
            style: TextStyle(
              color: kTextMediumColor,
              height: 1.5,
              fontSize: 12
            ),
          ),
        ],
      ),
    );
  }

  Row buildCaseNumber(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "64 ",
          style: Theme.of(context)
              .textTheme
              .display3
              .copyWith(color: kPrimaryColor, height: 1.2),
        ),
        Text(
          "42.3% ",
          style: TextStyle(color: kPrimaryColor),
        ),
        SvgPicture.asset("assets/icons/increase.svg")
      ],
    );
  }

  Row buildTitleWithMoreIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Cas you bess yi",
          style: TextStyle(
            color: kTextMediumColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SvgPicture.asset("assets/icons/more.svg")
      ],
    );
  }
}