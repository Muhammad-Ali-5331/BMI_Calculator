import 'package:flutter/material.dart';
import '../constants.dart';

class MyCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final VoidCallback? onPress; // nullable now

  MyCard({required this.colour, required this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
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
