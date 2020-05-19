import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: kPrimaryColor.withOpacity(.03),
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg"),
        onPressed: () {},
      )
    ],
  );
}