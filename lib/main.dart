import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'constance.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CALCULATOR',
      theme:  ThemeData().copyWith(
        primaryColor: kBGColour,
        scaffoldBackgroundColor: kBGColour,
        accentColor: kBGColour,
      ),
      home: InputPage(),
    );
  }
}
