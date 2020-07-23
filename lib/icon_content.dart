import 'package:flutter/material.dart';
import 'constance.dart';
class IconsContent extends StatelessWidget {
  IconsContent({@required this.icon,@required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: kIconCardsColor,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(label, style: kLabelTextStyle,
        )
      ],
    );
  }
}
