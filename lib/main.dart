import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'input_page': (context) => InputPage(),
        'results_page': (context) => ResultsPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: activeCardColour,
          titleTextStyle: smallTextStyle,
        ),
      ),
      initialRoute: 'input_page',
    );
  }
}
