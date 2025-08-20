import 'package:flutter/material.dart';
import 'icons_data.dart';
import 'card.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCarColour = Color(0xFF111328);
const bottomColor = Color(0xFFEB1555);
const iconsSize = 60.0;
const cardWidth = 200.0;
const cardHeight = 170.0;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = activeCardColour;
  Color femaleCardColor = inactiveCarColour;

  bool maleCardIsActive = true;
  bool femaleCardIsActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Gender Row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        maleCardIsActive
                            ? {}
                            : setState(() {
                                maleCardColor = activeCardColour;
                                femaleCardColor = inactiveCarColour;
                                maleCardIsActive = true;
                                femaleCardIsActive = false;
                              });
                      },
                      child: MyCard(
                        colour: maleCardColor,
                        cardChild: IconsContent(
                          icn: Icon(Icons.male, size: iconsSize),
                          txt: 'Male',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        femaleCardIsActive
                            ? {}
                            : setState(() {
                                femaleCardColor = activeCardColour;
                                maleCardColor = inactiveCarColour;
                                femaleCardIsActive = true;
                                maleCardIsActive = false;
                              });
                      },
                      child: MyCard(
                        colour: femaleCardColor,
                        cardChild: IconsContent(
                          icn: Icon(Icons.female, size: iconsSize),
                          txt: 'Female',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Middle Card
            Expanded(
              child: MyCard(colour: activeCardColour, cardChild: Container()),
            ),

            // Last Row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      colour: activeCardColour,
                      cardChild: Container(),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      colour: activeCardColour,
                      cardChild: Container(),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Button
            Container(
              alignment: Alignment.center,
              color: bottomColor,
              height: 70.0,
              margin: EdgeInsets.only(top: 10.0),
              child: Text('Calculate BMI', style: TextStyle(fontSize: 23.0)),
            ),
          ],
        ),
      ),
    );
  }
}
