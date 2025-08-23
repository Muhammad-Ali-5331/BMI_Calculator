import 'package:flutter/material.dart';
import '../constants.dart';

class IconsContent extends StatelessWidget {
  final Icon icn;
  final String txt;

  IconsContent({required this.icn, required this.txt});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icn,
        SizedBox(height: sizeBoxHeight),
        Text(
          txt,
          style: TextStyle(fontSize: fontSize, color: textColor),
        ),
      ],
    );
  }
}
