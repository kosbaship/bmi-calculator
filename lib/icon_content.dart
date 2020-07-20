import 'package:flutter/material.dart';
const Color textCardsColor = Color(0xFFc7c8d1);
const Color iconCardsColor = Color(0xFFbabbc7);
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: textCardsColor,
);

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
          color: iconCardsColor,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(label, style: labelTextStyle,
        )
      ],
    );
  }
}
