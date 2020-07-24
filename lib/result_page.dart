import 'package:flutter/material.dart';
import 'constance.dart';
class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('BMI CALCULATOR Result',
        style: kCardsTextStyle,
        ),
      ),
    );
  }
}
