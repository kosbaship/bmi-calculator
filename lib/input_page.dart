import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'gender.dart';
import 'constance.dart';

int Height = 174;
int Weight = 69;

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
                    child: ReusableWidget(
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
                    child: ReusableWidget(
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
              child: ReusableWidget(
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
                    child: ReusableWidget(
                      //======================================================
                    colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT', style: kLabelTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                Weight.toString(), style: kCardsTextStyle,
                              ),
                              Text(
                                'kg', style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundBTN(
                                icon: FontAwesomeIcons.minus,
                                onClick: (){
                                setState(() {
                                  Weight--;
                                });
                              },
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              RoundBTN(
                                icon: FontAwesomeIcons.plus,
                                onClick: (){
                                  setState(() {
                                    Weight++;
                                  });
                                },),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableWidget(
                      colour: kActiveCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 16.0),
            )
          ],
        ));
  }
}

class RoundBTN extends StatelessWidget {
  final IconData icon;
  final Function onClick;
  const RoundBTN({@required this.icon, this.onClick});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: kTextCardsColor,),
      onPressed: onClick,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      fillColor: kInActiveCardColour,
      elevation: 8.0,
    );
  }
}

