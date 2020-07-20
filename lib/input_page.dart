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
  Color MaleCardColour = inActiveCardColour;
  Color FemaleCardColour = inActiveCardColour;

  void updateColour(Gender gender){
    switch (gender){
      case Gender.Male:
        if(MaleCardColour == inActiveCardColour){
          MaleCardColour = ActiveCardColour;
          FemaleCardColour = inActiveCardColour;
        } else {
          MaleCardColour = inActiveCardColour;
          FemaleCardColour = inActiveCardColour;
        }
        break;
      case Gender.Female:
        if(FemaleCardColour == inActiveCardColour){
          FemaleCardColour = ActiveCardColour;
          MaleCardColour = inActiveCardColour;
        } else {
          FemaleCardColour = inActiveCardColour;
          MaleCardColour = inActiveCardColour;
        }
        break;
    }
  }

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
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColour(Gender.Male);
                        });
                      },
                      child: ReusableWidget(
                        colour: MaleCardColour,
                        cardChild: IconsContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColour(Gender.Female);
                        });
                      },
                      child: ReusableWidget(
                        colour: FemaleCardColour,
                        cardChild: IconsContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
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
