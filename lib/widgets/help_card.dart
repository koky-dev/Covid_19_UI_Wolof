import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpCard extends StatelessWidget {
  const HelpCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .4,
                top: 20,
                right: 20),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF60BE93),
                  Color(0xFF188D59),
                ]),
                borderRadius: BorderRadius.circular(20)),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Wotél thi 1515 \nnguir am ndimbal\n",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.white)),
                TextSpan(
                  text: "So amé djikhi djakha",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7)
                    )
                  )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset("assets/icons/nurse.svg"),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: SvgPicture.asset("assets/icons/virus.svg"),
          )
        ],
      ),
    );
  }
}
