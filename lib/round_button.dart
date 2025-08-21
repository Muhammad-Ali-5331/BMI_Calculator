import 'package:flutter/material.dart';
import 'constants.dart';

class RoundButton extends StatelessWidget {
  final Icon icon;
  final Function onPress;

  RoundButton({required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPress(),
      fillColor: inactiveCardColour,
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: icon,
    );
  }
}
