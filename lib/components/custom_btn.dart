import 'package:flutter/material.dart';
import '../constance.dart';
class RoundBTN extends StatelessWidget {
  final IconData icon;
  final Function onClick;
  RoundBTN({@required this.icon, this.onClick});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: kTextCardsColor,),
      onPressed: onClick,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      fillColor: kInActiveCardColour,
      elevation: 8.0,
    );
  }
}