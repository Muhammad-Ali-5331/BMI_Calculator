import 'package:flutter/material.dart';

const borderRadius = 15.0;
const widgetsMargin = 15.0;

class MyCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  MyCard({required this.colour, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(widgetsMargin),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: cardChild,
    );
  }
}
