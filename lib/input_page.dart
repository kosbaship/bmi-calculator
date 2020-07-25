import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'gender.dart';
import 'constance.dart';
import 'doplicate_card.dart';
import 'result_page.dart';
import 'bottom_button.dart';
int Height = 174;
int Weight = 69;
int Age = 19;

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
                          Height.toString(), style: kCardsTextStyle,
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
                        value: Height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double value) {
                          setState(() {
                            Height = value.round();
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
                            Weight--;
                          });
                        },
                        onPressRight: (){
                          setState(() {
                            Weight++;
                          });
                        },
                        cardLabel: 'WEIGHT',
                        cardSuffix: 'kg',
                        cardStartingText: Weight.toString(),
                      ),
                    ),
                  ),
                  Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: DoplicatedCard(
                      onPressLeft: (){
                        setState(() {
                          if(Age > 1)
                            Age--;
                        });
                      },
                      onPressRight: (){
                        setState(() {
                          Age++;
                        });
                      },
                      cardLabel: 'AGE',
                      cardSuffix: 'years',
                      cardStartingText: Age.toString(),
                    ),
                    ),
                  ),
                ],
              ),
            ),

            BottomButton(
              btnTitle: 'CALCULATE',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ResultPage(),
                ));
              },
            )
          ],
        ));
  }
}








