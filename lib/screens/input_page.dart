import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/gender.dart';
import '../constance.dart';
import '../components/doplicate_card.dart';
import 'result_page.dart';
import '../components/bottom_button.dart';
int mHeight = 187;
int mWeight = 97;
int mAge = 24;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 Gender SelectedGender;

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
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onClick: (){
                        setState(() {
                          SelectedGender = Gender.Male;
                        });
                      },
                      colour: SelectedGender == Gender.Male ? kActiveCardColour : kInActiveCardColour,
                      cardChild: IconsContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onClick: (){
                        setState(() {
                          SelectedGender = Gender.Female;
                        });
                      },
                      colour: SelectedGender == Gender.Male ? kInActiveCardColour : kActiveCardColour,
                      cardChild: IconsContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT', style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          mHeight.toString(), style: kCardsTextStyle,
                        ),
                        Text(
                          'cm', style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16.0),
                        inactiveTrackColor: Color(0xFFa9a9a9),
                        activeTrackColor: Colors.white,
                        thumbColor: kBottomContainerColor,
                        overlayColor: Color(0x49ff0067),
                      ),
                      child: Slider(
                        value: mHeight.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double value) {
                          setState(() {
                            mHeight = value.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
                colour: kActiveCardColour,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                    colour: kActiveCardColour,
                      cardChild: DoplicatedCard(
                        onPressLeft: (){
                          setState(() {
                            mWeight--;
                          });
                        },
                        onPressRight: (){
                          setState(() {
                            mWeight++;
                          });
                        },
                        cardLabel: 'WEIGHT',
                        cardSuffix: 'kg',
                        cardStartingText: mWeight.toString(),
                      ),
                    ),
                  ),
                  Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: DoplicatedCard(
                      onPressLeft: (){
                        setState(() {
                          if(mAge > 1)
                            mAge--;
                        });
                      },
                      onPressRight: (){
                        setState(() {
                          mAge++;
                        });
                      },
                      cardLabel: 'AGE',
                      cardSuffix: 'years',
                      cardStartingText: mAge.toString(),
                    ),
                    ),
                  ),
                ],
              ),
            ),

            BottomButton(
              btnTitle: 'CALCULATE',
              onTap: (){

                CalculatorBrain calc = CalculatorBrain(
                    height: mHeight,
                    weight: mWeight
                );

                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ));
              },
            )
          ],
        ));
  }
}








