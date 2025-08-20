import 'package:flutter/material.dart';
import 'input_page.dart';

const textStyle = TextStyle(color: Colors.white, fontSize: 23.5);
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Color(0xFF1D1E33),
          titleTextStyle: textStyle,
        ),
      ),
      home: InputPage(),
    );
  }
}
