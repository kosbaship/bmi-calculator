import 'package:flutter/material.dart';
import '../constance.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_btn.dart';
import '../screens/input_page.dart';
class DoplicatedCard extends StatelessWidget {


  final Function onPressLeft;
  final Function onPressRight;
  final String cardLabel;
  final String cardSuffix;
  final String cardStartingText;
  DoplicatedCard({@required this.onPressLeft,
    @required this.onPressRight,
    @required this.cardLabel,
    this.cardSuffix,
    this.cardStartingText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(cardLabel, style: kLabelTextStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              cardStartingText, style: kCardsTextStyle,
            ),
            Text(
              cardSuffix, style: kLabelTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundBTN(
              icon: FontAwesomeIcons.minus,
              onClick: onPressLeft,
            ),
            SizedBox(
              width: 16.0,
            ),
            RoundBTN(
              icon: FontAwesomeIcons.plus,
              onClick: onPressRight,
            ),
          ],
        ),
      ],
    );
  }
}

