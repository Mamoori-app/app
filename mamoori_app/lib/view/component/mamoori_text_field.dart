import 'package:flutter/material.dart';

import '../../util/color.dart';

class MamooriTextField extends StatelessWidget {
  final TextEditingController controller;
  String? initialText;
  int? maxLines;

  MamooriTextField({Key? key, required this.controller, this.maxLines, this.initialText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: primaryColor,
      maxLines: maxLines??1,
      initialValue: initialText,
    );
  }
}
