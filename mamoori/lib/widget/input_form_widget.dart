import 'package:flutter/material.dart';

class InputFormWidget extends StatelessWidget {
  final String title;
  final String content;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedContent;
  final VoidCallback onSavedWill;

  InputFormWidget({
    required this.title,
    required this.content,
    required this.onChangedTitle,
    required this.onChangedContent,
    required this.onSavedWill,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
