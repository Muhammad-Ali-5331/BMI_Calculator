import 'package:flutter/material.dart';

const sizeBoxHeight = 15.0;
const textColor = Color(0xFF8D8E98);
const fontSize = 18.0;

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
