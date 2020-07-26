import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constance.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import 'input_page.dart';
class ResultPage extends StatelessWidget {

  const ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 0),
              child: Text(
                'Your Result',
                style: kYourResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),Text(
                      interpretation,
                      style: kButtomAndDescriptionTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
              ),
            ),
          ),
          BottomButton(
            btnTitle: 'RE-CALCULATE',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => InputPage(),
              ));
            },),
        ],
      ),
    );
  }
}