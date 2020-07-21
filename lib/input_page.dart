import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'gemder.dart';
const Color ActiveCardColour = Color(0xFF262a4c);
const Color inActiveCardColour = Color( 0xFF14193b);
const Color bottomContainerColor = Color(0xFFff0067);
const double bottomContainerHeight = 80.0;

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
                      colour: SelectedGender == Gender.Male ? ActiveCardColour : inActiveCardColour,
                      cardChild: IconsContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
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
                      colour: SelectedGender == Gender.Male ? inActiveCardColour : ActiveCardColour,
                      cardChild: IconsContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableWidget(
                colour: ActiveCardColour,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableWidget(
                      colour: ActiveCardColour,
                    ),
                  ),
                  Expanded(
                    child: ReusableWidget(
                      colour: ActiveCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: bottomContainerColor,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 16.0),
            )
          ],
        ));
  }
}
