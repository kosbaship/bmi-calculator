import 'package:flutter/material.dart';
class ReusableWidget extends StatelessWidget {


  ReusableWidget({@required this.colour, this.cardChild, this.onClick});
  final Widget cardChild;
  final Color colour;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: colour),
        ),
    )
    ;
  }
}

