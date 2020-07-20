import 'package:flutter/material.dart';
class ReusableWidget extends StatelessWidget {
  final Color colour;

  ReusableWidget({@required this.colour, this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: colour),
      )
    ;
  }
}
