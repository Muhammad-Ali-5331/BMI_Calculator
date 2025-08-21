import 'package:flutter/material.dart';
import 'icons_data.dart';
import 'card.dart';
import 'constants.dart';
import 'round_button.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  double height = 180.0;
  double weight = 60;
  double age = 0;

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
                    child: MyCard(
                      colour: selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: IconsContent(
                        icn: Icon(Icons.male, size: iconsSize),
                        txt: 'Male',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      colour: selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: IconsContent(
                        icn: Icon(Icons.female, size: iconsSize),
                        txt: 'Female',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Middle Card
            Expanded(
              child: MyCard(
                colour: activeCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Height', style: smallTextStyle),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          height.toStringAsFixed(1),
                          style: numbersTextStyle,
                        ),
                        Text('cm', style: smallTextStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 25.0,
                        ),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 50.0,
                        max: 272.0,
                        activeColor: bottomColor,
                        inactiveColor: inactiveCardColour,
                        // allowedInteraction: SliderInteraction.tapAndSlide,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Last Row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      colour: activeCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT', style: smallTextStyle),
                          Text(
                            weight.toStringAsFixed(0),
                            style: numbersTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: Icon(Icons.remove),
                                onPress: () {
                                  setState(() {
                                    weight - 1 >= minWeight ? weight-- : Null;
                                  });
                                },
                              ),
                              SizedBox(width: 15.0),
                              RoundButton(
                                icon: Icon(Icons.add),
                                onPress: () {
                                  setState(() {
                                    weight + 1 <= maxWeight ? weight++ : Null;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      colour: activeCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE', style: smallTextStyle),
                          Text(age.toStringAsFixed(0), style: numbersTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: Icon(Icons.remove),
                                onPress: () {
                                  setState(() {
                                    age - 1 >= minAge ? age-- : Null;
                                  });
                                },
                              ),
                              SizedBox(width: 15.0),
                              RoundButton(
                                icon: Icon(Icons.add),
                                onPress: () {
                                  setState(() {
                                    age + 1 <= maxAge ? age++ : Null;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
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
