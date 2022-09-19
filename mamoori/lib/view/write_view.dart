import 'package:flutter/material.dart';
import 'package:mamoori/widget/input_form_widget.dart';

class WriteView extends StatefulWidget {
  WriteView({Key? key}) : super(key: key);

  @override
  State<WriteView> createState() => _WriteViewState();
}

class _WriteViewState extends State<WriteView> {
  final _formKey = GlobalKey<FormState>();

  String title = '';
  String content = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('유서 작성하기'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('제목'),
              InputFormWidget(
                title: title,
                content: content,
                onChangedTitle: (title) => setState(
                  () => this.title = title,
                ),
                onChangedContent: (content) => setState(
                  () => this.content = content,
                ),
                onSavedWill: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
