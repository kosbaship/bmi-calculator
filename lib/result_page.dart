import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constance.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'input_page.dart';
class ResultPage extends StatelessWidget {
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
                      'Normal',
                      style: kResultTextStyle,
                    ),Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),Text(
                      'Your BMI result is quite low, you should eat more!',
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


//child: Text('RESULT',
//style: kCardsTextStyle,
//),