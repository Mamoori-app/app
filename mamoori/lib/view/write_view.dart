import 'package:flutter/material.dart';

class WriteView extends StatefulWidget {
  WriteView({Key? key}) : super(key: key);

  @override
  State<WriteView> createState() => _WriteViewState();
}

class _WriteViewState extends State<WriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('유서 작성하기'),
      ),
    );
  }
}
