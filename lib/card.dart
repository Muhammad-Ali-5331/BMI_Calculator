import 'package:flutter/material.dart';

const borderRadius = 15.0;
const widgetsMargin = 15.0;

class MyCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  MyCard({
    required this.colour,
    required this.cardChild,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        margin: EdgeInsets.all(widgetsMargin),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: cardChild,
      ),
    );
  }
}
