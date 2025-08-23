import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String routingLink;
  final TextStyle buttonTextStyle;
  final String buttonText;

  BottomButton({
    required this.routingLink,
    required this.buttonText,
    required this.buttonTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routingLink);
      },
      child: Container(
        alignment: Alignment.center,
        color: bottomColor,
        height: 70.0,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 3.0),
        child: Text(buttonText, style: buttonTextStyle),
      ),
    );
  }
}
