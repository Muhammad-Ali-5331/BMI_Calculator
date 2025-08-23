import 'package:bmi_calculator/calculator.dart';
import '../components/card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/input_page.dart';

class ResultsPage extends StatelessWidget {
  final Calculator CALCULATIONS;

  ResultsPage({required this.CALCULATIONS});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('BMI CALCULATOR')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your BMI',
              style: kNumbersTextStyle,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: MyCard(
                colour: activeCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      CALCULATIONS.getResult().toUpperCase(),
                      style: kResultShortMsgTextStyle,
                    ),
                    Text(CALCULATIONS.get_bmi(), style: kResultNumberTextStyle),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        CALCULATIONS.getInterpretation(),
                        style: kResultMsgTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return InputPage();
                    },
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                color: bottomColor,
                height: 70.0,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 3.0),
                child: Text('RE-CALCULATE', style: kNavigationButtonsTextStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
