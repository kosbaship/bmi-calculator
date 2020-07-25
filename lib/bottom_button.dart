import 'package:flutter/material.dart';
import 'constance.dart';
import 'result_page.dart';
class BottomButton extends StatelessWidget {

  final String btnTitle;
  final Function onTap;

  const BottomButton({@required this.btnTitle, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            btnTitle,
            style: kButtomAndDescriptionTextStyle,
          ),
        ),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 16.0),
        padding: EdgeInsets.only(bottom: 8.0),
      ),
    );
  }
}