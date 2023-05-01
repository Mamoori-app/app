import 'package:flutter/material.dart';
import 'package:mamoori_app/utll/color.dart';

class MamooriButton extends StatelessWidget {
  final Widget widget;
  final GestureTapCallback onTap;
  final double borderRadius;
  Color? color;
  double? height;
  double? width;
  String? hasLine;
  MamooriButton({Key? key, required this.widget, required this.onTap,this.height, this.width, this.color, required this.borderRadius, this.hasLine}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: whiteColor,
      focusColor: whiteColor,
      hoverColor: whiteColor,
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
          decoration: BoxDecoration(
            border: hasLine==null?color==null? Border.all(color: Colors.black, width: 1): null:null,
            borderRadius: BorderRadius.circular(borderRadius),
            color: color,
          ),
          child: widget),
    );
  }
}
