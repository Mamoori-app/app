import 'package:flutter/material.dart';

class MamooriText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  MamooriText({Key? key, required this.text, required this.fontSize, required this.fontWeight, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
        style: TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize)
    );
  }
}
