import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());
const Color bgColour = Color(0xFF11163a);
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData().copyWith(
        primaryColor: bgColour,
        scaffoldBackgroundColor: bgColour,
        accentColor: bgColour,
      ),
      home: InputPage(),
    );
  }
}
